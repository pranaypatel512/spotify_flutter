// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_release_error_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewReleaseErrorResponse _$NewReleaseErrorResponseFromJson(
    Map<String, dynamic> json) {
  return _NewReleaseErrorResponse.fromJson(json);
}

/// @nodoc
mixin _$NewReleaseErrorResponse {
  Error? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewReleaseErrorResponseCopyWith<NewReleaseErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewReleaseErrorResponseCopyWith<$Res> {
  factory $NewReleaseErrorResponseCopyWith(NewReleaseErrorResponse value,
          $Res Function(NewReleaseErrorResponse) then) =
      _$NewReleaseErrorResponseCopyWithImpl<$Res, NewReleaseErrorResponse>;
  @useResult
  $Res call({Error? error});

  $ErrorCopyWith<$Res>? get error;
}

/// @nodoc
class _$NewReleaseErrorResponseCopyWithImpl<$Res,
        $Val extends NewReleaseErrorResponse>
    implements $NewReleaseErrorResponseCopyWith<$Res> {
  _$NewReleaseErrorResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $ErrorCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NewReleaseErrorResponseCopyWith<$Res>
    implements $NewReleaseErrorResponseCopyWith<$Res> {
  factory _$$_NewReleaseErrorResponseCopyWith(_$_NewReleaseErrorResponse value,
          $Res Function(_$_NewReleaseErrorResponse) then) =
      __$$_NewReleaseErrorResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Error? error});

  @override
  $ErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$$_NewReleaseErrorResponseCopyWithImpl<$Res>
    extends _$NewReleaseErrorResponseCopyWithImpl<$Res,
        _$_NewReleaseErrorResponse>
    implements _$$_NewReleaseErrorResponseCopyWith<$Res> {
  __$$_NewReleaseErrorResponseCopyWithImpl(_$_NewReleaseErrorResponse _value,
      $Res Function(_$_NewReleaseErrorResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_NewReleaseErrorResponse(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewReleaseErrorResponse implements _NewReleaseErrorResponse {
  _$_NewReleaseErrorResponse({this.error});

  factory _$_NewReleaseErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$$_NewReleaseErrorResponseFromJson(json);

  @override
  final Error? error;

  @override
  String toString() {
    return 'NewReleaseErrorResponse(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewReleaseErrorResponse &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewReleaseErrorResponseCopyWith<_$_NewReleaseErrorResponse>
      get copyWith =>
          __$$_NewReleaseErrorResponseCopyWithImpl<_$_NewReleaseErrorResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewReleaseErrorResponseToJson(
      this,
    );
  }
}

abstract class _NewReleaseErrorResponse implements NewReleaseErrorResponse {
  factory _NewReleaseErrorResponse({final Error? error}) =
      _$_NewReleaseErrorResponse;

  factory _NewReleaseErrorResponse.fromJson(Map<String, dynamic> json) =
      _$_NewReleaseErrorResponse.fromJson;

  @override
  Error? get error;
  @override
  @JsonKey(ignore: true)
  _$$_NewReleaseErrorResponseCopyWith<_$_NewReleaseErrorResponse>
      get copyWith => throw _privateConstructorUsedError;
}
