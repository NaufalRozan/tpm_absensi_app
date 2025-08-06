// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Attendance _$AttendanceFromJson(Map<String, dynamic> json) {
  return _Attendance.fromJson(json);
}

/// @nodoc
mixin _$Attendance {
  @HiveField(1)
  DateTime get timestamp => throw _privateConstructorUsedError;
  @HiveField(2)
  double get latitude => throw _privateConstructorUsedError;
  @HiveField(3)
  double get longitude => throw _privateConstructorUsedError;
  @HiveField(4)
  bool get locationValid => throw _privateConstructorUsedError;
  @HiveField(5)
  String get photoPath => throw _privateConstructorUsedError;

  /// Serializes this Attendance to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Attendance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttendanceCopyWith<Attendance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceCopyWith<$Res> {
  factory $AttendanceCopyWith(
          Attendance value, $Res Function(Attendance) then) =
      _$AttendanceCopyWithImpl<$Res, Attendance>;
  @useResult
  $Res call(
      {@HiveField(1) DateTime timestamp,
      @HiveField(2) double latitude,
      @HiveField(3) double longitude,
      @HiveField(4) bool locationValid,
      @HiveField(5) String photoPath});
}

/// @nodoc
class _$AttendanceCopyWithImpl<$Res, $Val extends Attendance>
    implements $AttendanceCopyWith<$Res> {
  _$AttendanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Attendance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? locationValid = null,
    Object? photoPath = null,
  }) {
    return _then(_value.copyWith(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      locationValid: null == locationValid
          ? _value.locationValid
          : locationValid // ignore: cast_nullable_to_non_nullable
              as bool,
      photoPath: null == photoPath
          ? _value.photoPath
          : photoPath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttendanceImplCopyWith<$Res>
    implements $AttendanceCopyWith<$Res> {
  factory _$$AttendanceImplCopyWith(
          _$AttendanceImpl value, $Res Function(_$AttendanceImpl) then) =
      __$$AttendanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(1) DateTime timestamp,
      @HiveField(2) double latitude,
      @HiveField(3) double longitude,
      @HiveField(4) bool locationValid,
      @HiveField(5) String photoPath});
}

/// @nodoc
class __$$AttendanceImplCopyWithImpl<$Res>
    extends _$AttendanceCopyWithImpl<$Res, _$AttendanceImpl>
    implements _$$AttendanceImplCopyWith<$Res> {
  __$$AttendanceImplCopyWithImpl(
      _$AttendanceImpl _value, $Res Function(_$AttendanceImpl) _then)
      : super(_value, _then);

  /// Create a copy of Attendance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? locationValid = null,
    Object? photoPath = null,
  }) {
    return _then(_$AttendanceImpl(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      locationValid: null == locationValid
          ? _value.locationValid
          : locationValid // ignore: cast_nullable_to_non_nullable
              as bool,
      photoPath: null == photoPath
          ? _value.photoPath
          : photoPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveField(0)
class _$AttendanceImpl implements _Attendance {
  const _$AttendanceImpl(
      {@HiveField(1) required this.timestamp,
      @HiveField(2) required this.latitude,
      @HiveField(3) required this.longitude,
      @HiveField(4) required this.locationValid,
      @HiveField(5) required this.photoPath});

  factory _$AttendanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceImplFromJson(json);

  @override
  @HiveField(1)
  final DateTime timestamp;
  @override
  @HiveField(2)
  final double latitude;
  @override
  @HiveField(3)
  final double longitude;
  @override
  @HiveField(4)
  final bool locationValid;
  @override
  @HiveField(5)
  final String photoPath;

  @override
  String toString() {
    return 'Attendance(timestamp: $timestamp, latitude: $latitude, longitude: $longitude, locationValid: $locationValid, photoPath: $photoPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.locationValid, locationValid) ||
                other.locationValid == locationValid) &&
            (identical(other.photoPath, photoPath) ||
                other.photoPath == photoPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, timestamp, latitude, longitude, locationValid, photoPath);

  /// Create a copy of Attendance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceImplCopyWith<_$AttendanceImpl> get copyWith =>
      __$$AttendanceImplCopyWithImpl<_$AttendanceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceImplToJson(
      this,
    );
  }
}

abstract class _Attendance implements Attendance {
  const factory _Attendance(
      {@HiveField(1) required final DateTime timestamp,
      @HiveField(2) required final double latitude,
      @HiveField(3) required final double longitude,
      @HiveField(4) required final bool locationValid,
      @HiveField(5) required final String photoPath}) = _$AttendanceImpl;

  factory _Attendance.fromJson(Map<String, dynamic> json) =
      _$AttendanceImpl.fromJson;

  @override
  @HiveField(1)
  DateTime get timestamp;
  @override
  @HiveField(2)
  double get latitude;
  @override
  @HiveField(3)
  double get longitude;
  @override
  @HiveField(4)
  bool get locationValid;
  @override
  @HiveField(5)
  String get photoPath;

  /// Create a copy of Attendance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceImplCopyWith<_$AttendanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
