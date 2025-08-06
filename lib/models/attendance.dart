import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'attendance.freezed.dart';
part 'attendance.g.dart';

@HiveType(typeId: 0)
@freezed
class Attendance with _$Attendance {
  @HiveField(0)
  const factory Attendance({
    @HiveField(1) required DateTime timestamp,
    @HiveField(2) required double latitude,
    @HiveField(3) required double longitude,
    @HiveField(4) required bool locationValid,
    @HiveField(5) required String photoPath,
  }) = _Attendance;

  factory Attendance.fromJson(Map<String, dynamic> json) =>
      _$AttendanceFromJson(json);
}
