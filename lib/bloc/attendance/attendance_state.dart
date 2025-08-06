part of 'attendance_bloc.dart';

@freezed
class AttendanceState with _$AttendanceState {
  const factory AttendanceState.initial() = _Initial;
  const factory AttendanceState.locationChecked({
    required bool locationValid,
    double? latitude,
    double? longitude,
  }) = _LocationChecked;
  const factory AttendanceState.photoTaken(String path) = _PhotoTaken;
  const factory AttendanceState.submitting() = _Submitting;
  const factory AttendanceState.success() = _Success;
  const factory AttendanceState.failure(String message) = _Failure;
}
