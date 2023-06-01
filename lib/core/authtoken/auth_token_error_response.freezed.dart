// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_token_error_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthTokenErrorResponse _$AuthTokenErrorResponseFromJson(
    Map<String, dynamic> json) {
  return _AuthTokenErrorResponse.fromJson(json);
}

/// @nodoc
mixin _$AuthTokenErrorResponse {
  String? get error => throw _privateConstructorUsedError;
  @JsonKey(name: 'error_description')
  String? get errorDescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthTokenErrorResponseCopyWith<AuthTokenErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthTokenErrorResponseCopyWith<$Res> {
  factory $AuthTokenErrorResponseCopyWith(AuthTokenErrorResponse value,
          $Res Function(AuthTokenErrorResponse) then) =
      _$AuthTokenErrorResponseCopyWithImpl<$Res, AuthTokenErrorResponse>;
  @useResult
  $Res call(
      {String? error,
      @JsonKey(name: 'error_description') String? errorDescription});
}

/// @nodoc
class _$AuthTokenErrorResponseCopyWithImpl<$Res,
        $Val extends AuthTokenErrorResponse>
    implements $AuthTokenErrorResponseCopyWith<$Res> {
  _$AuthTokenErrorResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? errorDescription = freezed,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      errorDescription: freezed == errorDescription
          ? _value.errorDescription
          : errorDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthTokenErrorResponseCopyWith<$Res>
    implements $AuthTokenErrorResponseCopyWith<$Res> {
  factory _$$_AuthTokenErrorResponseCopyWith(_$_AuthTokenErrorResponse value,
          $Res Function(_$_AuthTokenErrorResponse) then) =
      __$$_AuthTokenErrorResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? error,
      @JsonKey(name: 'error_description') String? errorDescription});
}

/// @nodoc
class __$$_AuthTokenErrorResponseCopyWithImpl<$Res>
    extends _$AuthTokenErrorResponseCopyWithImpl<$Res,
        _$_AuthTokenErrorResponse>
    implements _$$_AuthTokenErrorResponseCopyWith<$Res> {
  __$$_AuthTokenErrorResponseCopyWithImpl(_$_AuthTokenErrorResponse _value,
      $Res Function(_$_AuthTokenErrorResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? errorDescription = freezed,
  }) {
    return _then(_$_AuthTokenErrorResponse(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      errorDescription: freezed == errorDescription
          ? _value.errorDescription
          : errorDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthTokenErrorResponse implements _AuthTokenErrorResponse {
  _$_AuthTokenErrorResponse(
      {this.error, @JsonKey(name: 'error_description') this.errorDescription});

  factory _$_AuthTokenErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AuthTokenErrorResponseFromJson(json);

  @override
  final String? error;
  @override
  @JsonKey(name: 'error_description')
  final String? errorDescription;

  @override
  String toString() {
    return 'AuthTokenErrorResponse(error: $error, errorDescription: $errorDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthTokenErrorResponse &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.errorDescription, errorDescription) ||
                other.errorDescription == errorDescription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error, errorDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthTokenErrorResponseCopyWith<_$_AuthTokenErrorResponse> get copyWith =>
      __$$_AuthTokenErrorResponseCopyWithImpl<_$_AuthTokenErrorResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthTokenErrorResponseToJson(
      this,
    );
  }
}

abstract class _AuthTokenErrorResponse implements AuthTokenErrorResponse {
  factory _AuthTokenErrorResponse(
          {final String? error,
          @JsonKey(name: 'error_description') final String? errorDescription}) =
      _$_AuthTokenErrorResponse;

  factory _AuthTokenErrorResponse.fromJson(Map<String, dynamic> json) =
      _$_AuthTokenErrorResponse.fromJson;

  @override
  String? get error;
  @override
  @JsonKey(name: 'error_description')
  String? get errorDescription;
  @override
  @JsonKey(ignore: true)
  _$$_AuthTokenErrorResponseCopyWith<_$_AuthTokenErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
