import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tpm_absensi_app/services/location_service.dart';
import 'package:tpm_absensi_app/services/permission_service.dart';
import 'package:tpm_absensi_app/services/storage_service.dart';
import '../../models/attendance.dart';
import 'package:image_picker/image_picker.dart';

part 'attendance_bloc.freezed.dart';
part 'attendance_event.dart';
part 'attendance_state.dart';

class AttendanceBloc extends Bloc<AttendanceEvent, AttendanceState> {
  AttendanceBloc() : super(const _Initial()) {
    on<_CheckStatus>((_, emit) async {
      await PermissionService.requestLocation();
      final pos = await LocationService.getCurrentPosition();
      final valid = LocationService.isWithinOffice(pos.latitude, pos.longitude);
      emit(AttendanceState.locationChecked(
        locationValid: valid,
        latitude: pos.latitude,
        longitude: pos.longitude,
      ));
    });

    on<_TakePhoto>((_, emit) async {
      await PermissionService.requestCamera();
      final file = await ImagePicker().pickImage(source: ImageSource.camera);
      if (file == null) {
        emit(const AttendanceState.failure('Foto dibatalkan'));
      } else {
        emit(AttendanceState.photoTaken(file.path));
      }
    });

    on<_Submit>((event, emit) async {
      final current = state;
      if (current is _LocationChecked && current.locationValid) {
        final photoState = state;
        if (photoState is _PhotoTaken) {
          emit(const AttendanceState.submitting());
          final att = Attendance(
            timestamp: DateTime.now(),
            latitude: current.latitude!,
            longitude: current.longitude!,
            locationValid: true,
            photoPath: photoState.path,
          );
          await StorageService.saveAttendance(att);
          emit(const AttendanceState.success());
        } else {
          emit(const AttendanceState.failure('Belum ada foto'));
        }
      } else {
        emit(const AttendanceState.failure('Lokasi tidak valid'));
      }
    });
  }
}
