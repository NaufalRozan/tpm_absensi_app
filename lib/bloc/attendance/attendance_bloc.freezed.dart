// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AttendanceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() checkStatus,
    required TResult Function() takePhoto,
    required TResult Function() submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? checkStatus,
    TResult? Function()? takePhoto,
    TResult? Function()? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? checkStatus,
    TResult Function()? takePhoto,
    TResult Function()? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CheckStatus value) checkStatus,
    required TResult Function(_TakePhoto value) takePhoto,
    required TResult Function(_Submit value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CheckStatus value)? checkStatus,
    TResult? Function(_TakePhoto value)? takePhoto,
    TResult? Function(_Submit value)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CheckStatus value)? checkStatus,
    TResult Function(_TakePhoto value)? takePhoto,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceEventCopyWith<$Res> {
  factory $AttendanceEventCopyWith(
          AttendanceEvent value, $Res Function(AttendanceEvent) then) =
      _$AttendanceEventCopyWithImpl<$Res, AttendanceEvent>;
}

/// @nodoc
class _$AttendanceEventCopyWithImpl<$Res, $Val extends AttendanceEvent>
    implements $AttendanceEventCopyWith<$Res> {
  _$AttendanceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendanceEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$AttendanceEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendanceEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'AttendanceEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() checkStatus,
    required TResult Function() takePhoto,
    required TResult Function() submit,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? checkStatus,
    TResult? Function()? takePhoto,
    TResult? Function()? submit,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? checkStatus,
    TResult Function()? takePhoto,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CheckStatus value) checkStatus,
    required TResult Function(_TakePhoto value) takePhoto,
    required TResult Function(_Submit value) submit,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CheckStatus value)? checkStatus,
    TResult? Function(_TakePhoto value)? takePhoto,
    TResult? Function(_Submit value)? submit,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CheckStatus value)? checkStatus,
    TResult Function(_TakePhoto value)? takePhoto,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AttendanceEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$CheckStatusImplCopyWith<$Res> {
  factory _$$CheckStatusImplCopyWith(
          _$CheckStatusImpl value, $Res Function(_$CheckStatusImpl) then) =
      __$$CheckStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckStatusImplCopyWithImpl<$Res>
    extends _$AttendanceEventCopyWithImpl<$Res, _$CheckStatusImpl>
    implements _$$CheckStatusImplCopyWith<$Res> {
  __$$CheckStatusImplCopyWithImpl(
      _$CheckStatusImpl _value, $Res Function(_$CheckStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendanceEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckStatusImpl implements _CheckStatus {
  const _$CheckStatusImpl();

  @override
  String toString() {
    return 'AttendanceEvent.checkStatus()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() checkStatus,
    required TResult Function() takePhoto,
    required TResult Function() submit,
  }) {
    return checkStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? checkStatus,
    TResult? Function()? takePhoto,
    TResult? Function()? submit,
  }) {
    return checkStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? checkStatus,
    TResult Function()? takePhoto,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (checkStatus != null) {
      return checkStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CheckStatus value) checkStatus,
    required TResult Function(_TakePhoto value) takePhoto,
    required TResult Function(_Submit value) submit,
  }) {
    return checkStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CheckStatus value)? checkStatus,
    TResult? Function(_TakePhoto value)? takePhoto,
    TResult? Function(_Submit value)? submit,
  }) {
    return checkStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CheckStatus value)? checkStatus,
    TResult Function(_TakePhoto value)? takePhoto,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (checkStatus != null) {
      return checkStatus(this);
    }
    return orElse();
  }
}

abstract class _CheckStatus implements AttendanceEvent {
  const factory _CheckStatus() = _$CheckStatusImpl;
}

/// @nodoc
abstract class _$$TakePhotoImplCopyWith<$Res> {
  factory _$$TakePhotoImplCopyWith(
          _$TakePhotoImpl value, $Res Function(_$TakePhotoImpl) then) =
      __$$TakePhotoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TakePhotoImplCopyWithImpl<$Res>
    extends _$AttendanceEventCopyWithImpl<$Res, _$TakePhotoImpl>
    implements _$$TakePhotoImplCopyWith<$Res> {
  __$$TakePhotoImplCopyWithImpl(
      _$TakePhotoImpl _value, $Res Function(_$TakePhotoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendanceEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TakePhotoImpl implements _TakePhoto {
  const _$TakePhotoImpl();

  @override
  String toString() {
    return 'AttendanceEvent.takePhoto()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TakePhotoImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() checkStatus,
    required TResult Function() takePhoto,
    required TResult Function() submit,
  }) {
    return takePhoto();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? checkStatus,
    TResult? Function()? takePhoto,
    TResult? Function()? submit,
  }) {
    return takePhoto?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? checkStatus,
    TResult Function()? takePhoto,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (takePhoto != null) {
      return takePhoto();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CheckStatus value) checkStatus,
    required TResult Function(_TakePhoto value) takePhoto,
    required TResult Function(_Submit value) submit,
  }) {
    return takePhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CheckStatus value)? checkStatus,
    TResult? Function(_TakePhoto value)? takePhoto,
    TResult? Function(_Submit value)? submit,
  }) {
    return takePhoto?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CheckStatus value)? checkStatus,
    TResult Function(_TakePhoto value)? takePhoto,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (takePhoto != null) {
      return takePhoto(this);
    }
    return orElse();
  }
}

abstract class _TakePhoto implements AttendanceEvent {
  const factory _TakePhoto() = _$TakePhotoImpl;
}

/// @nodoc
abstract class _$$SubmitImplCopyWith<$Res> {
  factory _$$SubmitImplCopyWith(
          _$SubmitImpl value, $Res Function(_$SubmitImpl) then) =
      __$$SubmitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitImplCopyWithImpl<$Res>
    extends _$AttendanceEventCopyWithImpl<$Res, _$SubmitImpl>
    implements _$$SubmitImplCopyWith<$Res> {
  __$$SubmitImplCopyWithImpl(
      _$SubmitImpl _value, $Res Function(_$SubmitImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendanceEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SubmitImpl implements _Submit {
  const _$SubmitImpl();

  @override
  String toString() {
    return 'AttendanceEvent.submit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() checkStatus,
    required TResult Function() takePhoto,
    required TResult Function() submit,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? checkStatus,
    TResult? Function()? takePhoto,
    TResult? Function()? submit,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? checkStatus,
    TResult Function()? takePhoto,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CheckStatus value) checkStatus,
    required TResult Function(_TakePhoto value) takePhoto,
    required TResult Function(_Submit value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CheckStatus value)? checkStatus,
    TResult? Function(_TakePhoto value)? takePhoto,
    TResult? Function(_Submit value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CheckStatus value)? checkStatus,
    TResult Function(_TakePhoto value)? takePhoto,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements AttendanceEvent {
  const factory _Submit() = _$SubmitImpl;
}

/// @nodoc
mixin _$AttendanceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            bool locationValid, double? latitude, double? longitude)
        locationChecked,
    required TResult Function(String path) photoTaken,
    required TResult Function() submitting,
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool locationValid, double? latitude, double? longitude)?
        locationChecked,
    TResult? Function(String path)? photoTaken,
    TResult? Function()? submitting,
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool locationValid, double? latitude, double? longitude)?
        locationChecked,
    TResult Function(String path)? photoTaken,
    TResult Function()? submitting,
    TResult Function()? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LocationChecked value) locationChecked,
    required TResult Function(_PhotoTaken value) photoTaken,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LocationChecked value)? locationChecked,
    TResult? Function(_PhotoTaken value)? photoTaken,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LocationChecked value)? locationChecked,
    TResult Function(_PhotoTaken value)? photoTaken,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceStateCopyWith<$Res> {
  factory $AttendanceStateCopyWith(
          AttendanceState value, $Res Function(AttendanceState) then) =
      _$AttendanceStateCopyWithImpl<$Res, AttendanceState>;
}

/// @nodoc
class _$AttendanceStateCopyWithImpl<$Res, $Val extends AttendanceState>
    implements $AttendanceStateCopyWith<$Res> {
  _$AttendanceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AttendanceStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AttendanceState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            bool locationValid, double? latitude, double? longitude)
        locationChecked,
    required TResult Function(String path) photoTaken,
    required TResult Function() submitting,
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool locationValid, double? latitude, double? longitude)?
        locationChecked,
    TResult? Function(String path)? photoTaken,
    TResult? Function()? submitting,
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool locationValid, double? latitude, double? longitude)?
        locationChecked,
    TResult Function(String path)? photoTaken,
    TResult Function()? submitting,
    TResult Function()? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LocationChecked value) locationChecked,
    required TResult Function(_PhotoTaken value) photoTaken,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LocationChecked value)? locationChecked,
    TResult? Function(_PhotoTaken value)? photoTaken,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LocationChecked value)? locationChecked,
    TResult Function(_PhotoTaken value)? photoTaken,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AttendanceState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LocationCheckedImplCopyWith<$Res> {
  factory _$$LocationCheckedImplCopyWith(_$LocationCheckedImpl value,
          $Res Function(_$LocationCheckedImpl) then) =
      __$$LocationCheckedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool locationValid, double? latitude, double? longitude});
}

/// @nodoc
class __$$LocationCheckedImplCopyWithImpl<$Res>
    extends _$AttendanceStateCopyWithImpl<$Res, _$LocationCheckedImpl>
    implements _$$LocationCheckedImplCopyWith<$Res> {
  __$$LocationCheckedImplCopyWithImpl(
      _$LocationCheckedImpl _value, $Res Function(_$LocationCheckedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationValid = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$LocationCheckedImpl(
      locationValid: null == locationValid
          ? _value.locationValid
          : locationValid // ignore: cast_nullable_to_non_nullable
              as bool,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$LocationCheckedImpl implements _LocationChecked {
  const _$LocationCheckedImpl(
      {required this.locationValid, this.latitude, this.longitude});

  @override
  final bool locationValid;
  @override
  final double? latitude;
  @override
  final double? longitude;

  @override
  String toString() {
    return 'AttendanceState.locationChecked(locationValid: $locationValid, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationCheckedImpl &&
            (identical(other.locationValid, locationValid) ||
                other.locationValid == locationValid) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, locationValid, latitude, longitude);

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationCheckedImplCopyWith<_$LocationCheckedImpl> get copyWith =>
      __$$LocationCheckedImplCopyWithImpl<_$LocationCheckedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            bool locationValid, double? latitude, double? longitude)
        locationChecked,
    required TResult Function(String path) photoTaken,
    required TResult Function() submitting,
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) {
    return locationChecked(locationValid, latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool locationValid, double? latitude, double? longitude)?
        locationChecked,
    TResult? Function(String path)? photoTaken,
    TResult? Function()? submitting,
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) {
    return locationChecked?.call(locationValid, latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool locationValid, double? latitude, double? longitude)?
        locationChecked,
    TResult Function(String path)? photoTaken,
    TResult Function()? submitting,
    TResult Function()? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (locationChecked != null) {
      return locationChecked(locationValid, latitude, longitude);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LocationChecked value) locationChecked,
    required TResult Function(_PhotoTaken value) photoTaken,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return locationChecked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LocationChecked value)? locationChecked,
    TResult? Function(_PhotoTaken value)? photoTaken,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return locationChecked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LocationChecked value)? locationChecked,
    TResult Function(_PhotoTaken value)? photoTaken,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (locationChecked != null) {
      return locationChecked(this);
    }
    return orElse();
  }
}

abstract class _LocationChecked implements AttendanceState {
  const factory _LocationChecked(
      {required final bool locationValid,
      final double? latitude,
      final double? longitude}) = _$LocationCheckedImpl;

  bool get locationValid;
  double? get latitude;
  double? get longitude;

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationCheckedImplCopyWith<_$LocationCheckedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PhotoTakenImplCopyWith<$Res> {
  factory _$$PhotoTakenImplCopyWith(
          _$PhotoTakenImpl value, $Res Function(_$PhotoTakenImpl) then) =
      __$$PhotoTakenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$PhotoTakenImplCopyWithImpl<$Res>
    extends _$AttendanceStateCopyWithImpl<$Res, _$PhotoTakenImpl>
    implements _$$PhotoTakenImplCopyWith<$Res> {
  __$$PhotoTakenImplCopyWithImpl(
      _$PhotoTakenImpl _value, $Res Function(_$PhotoTakenImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$PhotoTakenImpl(
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhotoTakenImpl implements _PhotoTaken {
  const _$PhotoTakenImpl(this.path);

  @override
  final String path;

  @override
  String toString() {
    return 'AttendanceState.photoTaken(path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoTakenImpl &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoTakenImplCopyWith<_$PhotoTakenImpl> get copyWith =>
      __$$PhotoTakenImplCopyWithImpl<_$PhotoTakenImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            bool locationValid, double? latitude, double? longitude)
        locationChecked,
    required TResult Function(String path) photoTaken,
    required TResult Function() submitting,
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) {
    return photoTaken(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool locationValid, double? latitude, double? longitude)?
        locationChecked,
    TResult? Function(String path)? photoTaken,
    TResult? Function()? submitting,
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) {
    return photoTaken?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool locationValid, double? latitude, double? longitude)?
        locationChecked,
    TResult Function(String path)? photoTaken,
    TResult Function()? submitting,
    TResult Function()? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (photoTaken != null) {
      return photoTaken(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LocationChecked value) locationChecked,
    required TResult Function(_PhotoTaken value) photoTaken,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return photoTaken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LocationChecked value)? locationChecked,
    TResult? Function(_PhotoTaken value)? photoTaken,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return photoTaken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LocationChecked value)? locationChecked,
    TResult Function(_PhotoTaken value)? photoTaken,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (photoTaken != null) {
      return photoTaken(this);
    }
    return orElse();
  }
}

abstract class _PhotoTaken implements AttendanceState {
  const factory _PhotoTaken(final String path) = _$PhotoTakenImpl;

  String get path;

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhotoTakenImplCopyWith<_$PhotoTakenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmittingImplCopyWith<$Res> {
  factory _$$SubmittingImplCopyWith(
          _$SubmittingImpl value, $Res Function(_$SubmittingImpl) then) =
      __$$SubmittingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmittingImplCopyWithImpl<$Res>
    extends _$AttendanceStateCopyWithImpl<$Res, _$SubmittingImpl>
    implements _$$SubmittingImplCopyWith<$Res> {
  __$$SubmittingImplCopyWithImpl(
      _$SubmittingImpl _value, $Res Function(_$SubmittingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SubmittingImpl implements _Submitting {
  const _$SubmittingImpl();

  @override
  String toString() {
    return 'AttendanceState.submitting()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmittingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            bool locationValid, double? latitude, double? longitude)
        locationChecked,
    required TResult Function(String path) photoTaken,
    required TResult Function() submitting,
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) {
    return submitting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool locationValid, double? latitude, double? longitude)?
        locationChecked,
    TResult? Function(String path)? photoTaken,
    TResult? Function()? submitting,
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) {
    return submitting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool locationValid, double? latitude, double? longitude)?
        locationChecked,
    TResult Function(String path)? photoTaken,
    TResult Function()? submitting,
    TResult Function()? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (submitting != null) {
      return submitting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LocationChecked value) locationChecked,
    required TResult Function(_PhotoTaken value) photoTaken,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return submitting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LocationChecked value)? locationChecked,
    TResult? Function(_PhotoTaken value)? photoTaken,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return submitting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LocationChecked value)? locationChecked,
    TResult Function(_PhotoTaken value)? photoTaken,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (submitting != null) {
      return submitting(this);
    }
    return orElse();
  }
}

abstract class _Submitting implements AttendanceState {
  const factory _Submitting() = _$SubmittingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$AttendanceStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl();

  @override
  String toString() {
    return 'AttendanceState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            bool locationValid, double? latitude, double? longitude)
        locationChecked,
    required TResult Function(String path) photoTaken,
    required TResult Function() submitting,
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool locationValid, double? latitude, double? longitude)?
        locationChecked,
    TResult? Function(String path)? photoTaken,
    TResult? Function()? submitting,
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool locationValid, double? latitude, double? longitude)?
        locationChecked,
    TResult Function(String path)? photoTaken,
    TResult Function()? submitting,
    TResult Function()? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LocationChecked value) locationChecked,
    required TResult Function(_PhotoTaken value) photoTaken,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LocationChecked value)? locationChecked,
    TResult? Function(_PhotoTaken value)? photoTaken,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LocationChecked value)? locationChecked,
    TResult Function(_PhotoTaken value)? photoTaken,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements AttendanceState {
  const factory _Success() = _$SuccessImpl;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$AttendanceStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AttendanceState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            bool locationValid, double? latitude, double? longitude)
        locationChecked,
    required TResult Function(String path) photoTaken,
    required TResult Function() submitting,
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool locationValid, double? latitude, double? longitude)?
        locationChecked,
    TResult? Function(String path)? photoTaken,
    TResult? Function()? submitting,
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool locationValid, double? latitude, double? longitude)?
        locationChecked,
    TResult Function(String path)? photoTaken,
    TResult Function()? submitting,
    TResult Function()? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LocationChecked value) locationChecked,
    required TResult Function(_PhotoTaken value) photoTaken,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LocationChecked value)? locationChecked,
    TResult? Function(_PhotoTaken value)? photoTaken,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LocationChecked value)? locationChecked,
    TResult Function(_PhotoTaken value)? photoTaken,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements AttendanceState {
  const factory _Failure(final String message) = _$FailureImpl;

  String get message;

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
