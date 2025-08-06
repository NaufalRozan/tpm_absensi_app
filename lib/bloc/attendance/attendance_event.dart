part of 'attendance_bloc.dart';

@freezed
class AttendanceEvent with _$AttendanceEvent {
  const factory AttendanceEvent.started() = _Started;
  const factory AttendanceEvent.checkStatus() = _CheckStatus;
  const factory AttendanceEvent.takePhoto() = _TakePhoto;
  const factory AttendanceEvent.submit() = _Submit;
}