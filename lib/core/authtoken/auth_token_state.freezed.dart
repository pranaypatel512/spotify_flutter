// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_token_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthTokenResponseState {
  AuthTokenResponse? get authTokenResponse =>
      throw _privateConstructorUsedError;
  AuthTokenErrorResponse? get authTokenErrorResponse =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthTokenResponseStateCopyWith<AuthTokenResponseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthTokenResponseStateCopyWith<$Res> {
  factory $AuthTokenResponseStateCopyWith(AuthTokenResponseState value,
          $Res Function(AuthTokenResponseState) then) =
      _$AuthTokenResponseStateCopyWithImpl<$Res, AuthTokenResponseState>;
  @useResult
  $Res call(
      {AuthTokenResponse? authTokenResponse,
      AuthTokenErrorResponse? authTokenErrorResponse,
      bool isLoading});

  $AuthTokenResponseCopyWith<$Res>? get authTokenResponse;
  $AuthTokenErrorResponseCopyWith<$Res>? get authTokenErrorResponse;
}

/// @nodoc
class _$AuthTokenResponseStateCopyWithImpl<$Res,
        $Val extends AuthTokenResponseState>
    implements $AuthTokenResponseStateCopyWith<$Res> {
  _$AuthTokenResponseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authTokenResponse = freezed,
    Object? authTokenErrorResponse = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      authTokenResponse: freezed == authTokenResponse
          ? _value.authTokenResponse
          : authTokenResponse // ignore: cast_nullable_to_non_nullable
              as AuthTokenResponse?,
      authTokenErrorResponse: freezed == authTokenErrorResponse
          ? _value.authTokenErrorResponse
          : authTokenErrorResponse // ignore: cast_nullable_to_non_nullable
              as AuthTokenErrorResponse?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthTokenResponseCopyWith<$Res>? get authTokenResponse {
    if (_value.authTokenResponse == null) {
      return null;
    }

    return $AuthTokenResponseCopyWith<$Res>(_value.authTokenResponse!, (value) {
      return _then(_value.copyWith(authTokenResponse: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthTokenErrorResponseCopyWith<$Res>? get authTokenErrorResponse {
    if (_value.authTokenErrorResponse == null) {
      return null;
    }

    return $AuthTokenErrorResponseCopyWith<$Res>(_value.authTokenErrorResponse!,
        (value) {
      return _then(_value.copyWith(authTokenErrorResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthTokenResponseStateCopyWith<$Res>
    implements $AuthTokenResponseStateCopyWith<$Res> {
  factory _$$_AuthTokenResponseStateCopyWith(_$_AuthTokenResponseState value,
          $Res Function(_$_AuthTokenResponseState) then) =
      __$$_AuthTokenResponseStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AuthTokenResponse? authTokenResponse,
      AuthTokenErrorResponse? authTokenErrorResponse,
      bool isLoading});

  @override
  $AuthTokenResponseCopyWith<$Res>? get authTokenResponse;
  @override
  $AuthTokenErrorResponseCopyWith<$Res>? get authTokenErrorResponse;
}

/// @nodoc
class __$$_AuthTokenResponseStateCopyWithImpl<$Res>
    extends _$AuthTokenResponseStateCopyWithImpl<$Res,
        _$_AuthTokenResponseState>
    implements _$$_AuthTokenResponseStateCopyWith<$Res> {
  __$$_AuthTokenResponseStateCopyWithImpl(_$_AuthTokenResponseState _value,
      $Res Function(_$_AuthTokenResponseState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authTokenResponse = freezed,
    Object? authTokenErrorResponse = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$_AuthTokenResponseState(
      authTokenResponse: freezed == authTokenResponse
          ? _value.authTokenResponse
          : authTokenResponse // ignore: cast_nullable_to_non_nullable
              as AuthTokenResponse?,
      authTokenErrorResponse: freezed == authTokenErrorResponse
          ? _value.authTokenErrorResponse
          : authTokenErrorResponse // ignore: cast_nullable_to_non_nullable
              as AuthTokenErrorResponse?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AuthTokenResponseState implements _AuthTokenResponseState {
  _$_AuthTokenResponseState(
      {this.authTokenResponse = null,
      this.authTokenErrorResponse = null,
      this.isLoading = false});

  @override
  @JsonKey()
  final AuthTokenResponse? authTokenResponse;
  @override
  @JsonKey()
  final AuthTokenErrorResponse? authTokenErrorResponse;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'AuthTokenResponseState(authTokenResponse: $authTokenResponse, authTokenErrorResponse: $authTokenErrorResponse, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthTokenResponseState &&
            (identical(other.authTokenResponse, authTokenResponse) ||
                other.authTokenResponse == authTokenResponse) &&
            (identical(other.authTokenErrorResponse, authTokenErrorResponse) ||
                other.authTokenErrorResponse == authTokenErrorResponse) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, authTokenResponse, authTokenErrorResponse, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthTokenResponseStateCopyWith<_$_AuthTokenResponseState> get copyWith =>
      __$$_AuthTokenResponseStateCopyWithImpl<_$_AuthTokenResponseState>(
          this, _$identity);
}

abstract class _AuthTokenResponseState implements AuthTokenResponseState {
  factory _AuthTokenResponseState(
      {final AuthTokenResponse? authTokenResponse,
      final AuthTokenErrorResponse? authTokenErrorResponse,
      final bool isLoading}) = _$_AuthTokenResponseState;

  @override
  AuthTokenResponse? get authTokenResponse;
  @override
  AuthTokenErrorResponse? get authTokenErrorResponse;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_AuthTokenResponseStateCopyWith<_$_AuthTokenResponseState> get copyWith =>
      throw _privateConstructorUsedError;
}
