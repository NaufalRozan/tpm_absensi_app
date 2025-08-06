// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AttendanceAdapter extends TypeAdapter<Attendance> {
  @override
  final int typeId = 0;

  @override
  Attendance read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Attendance(
      timestamp: fields[1] as DateTime,
      latitude: fields[2] as double,
      longitude: fields[3] as double,
      locationValid: fields[4] as bool,
      photoPath: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Attendance obj) {
    writer
      ..writeByte(5)
      ..writeByte(1)
      ..write(obj.timestamp)
      ..writeByte(2)
      ..write(obj.latitude)
      ..writeByte(3)
      ..write(obj.longitude)
      ..writeByte(4)
      ..write(obj.locationValid)
      ..writeByte(5)
      ..write(obj.photoPath);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AttendanceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttendanceImpl _$$AttendanceImplFromJson(Map<String, dynamic> json) =>
    _$AttendanceImpl(
      timestamp: DateTime.parse(json['timestamp'] as String),
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      locationValid: json['locationValid'] as bool,
      photoPath: json['photoPath'] as String,
    );

Map<String, dynamic> _$$AttendanceImplToJson(_$AttendanceImpl instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp.toIso8601String(),
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'locationValid': instance.locationValid,
      'photoPath': instance.photoPath,
    };
