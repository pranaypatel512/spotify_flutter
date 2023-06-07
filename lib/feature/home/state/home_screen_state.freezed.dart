// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeScreenState {
  NewReleaseListResponse? get newReleaseListResponse =>
      throw _privateConstructorUsedError;
  NewReleaseErrorResponse? get newReleaseErrorResponse =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeScreenStateCopyWith<HomeScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenStateCopyWith<$Res> {
  factory $HomeScreenStateCopyWith(
          HomeScreenState value, $Res Function(HomeScreenState) then) =
      _$HomeScreenStateCopyWithImpl<$Res, HomeScreenState>;
  @useResult
  $Res call(
      {NewReleaseListResponse? newReleaseListResponse,
      NewReleaseErrorResponse? newReleaseErrorResponse,
      bool isLoading});

  $NewReleaseListResponseCopyWith<$Res>? get newReleaseListResponse;
  $NewReleaseErrorResponseCopyWith<$Res>? get newReleaseErrorResponse;
}

/// @nodoc
class _$HomeScreenStateCopyWithImpl<$Res, $Val extends HomeScreenState>
    implements $HomeScreenStateCopyWith<$Res> {
  _$HomeScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newReleaseListResponse = freezed,
    Object? newReleaseErrorResponse = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      newReleaseListResponse: freezed == newReleaseListResponse
          ? _value.newReleaseListResponse
          : newReleaseListResponse // ignore: cast_nullable_to_non_nullable
              as NewReleaseListResponse?,
      newReleaseErrorResponse: freezed == newReleaseErrorResponse
          ? _value.newReleaseErrorResponse
          : newReleaseErrorResponse // ignore: cast_nullable_to_non_nullable
              as NewReleaseErrorResponse?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NewReleaseListResponseCopyWith<$Res>? get newReleaseListResponse {
    if (_value.newReleaseListResponse == null) {
      return null;
    }

    return $NewReleaseListResponseCopyWith<$Res>(_value.newReleaseListResponse!,
        (value) {
      return _then(_value.copyWith(newReleaseListResponse: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NewReleaseErrorResponseCopyWith<$Res>? get newReleaseErrorResponse {
    if (_value.newReleaseErrorResponse == null) {
      return null;
    }

    return $NewReleaseErrorResponseCopyWith<$Res>(
        _value.newReleaseErrorResponse!, (value) {
      return _then(_value.copyWith(newReleaseErrorResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HomeScreenStateCopyWith<$Res>
    implements $HomeScreenStateCopyWith<$Res> {
  factory _$$_HomeScreenStateCopyWith(
          _$_HomeScreenState value, $Res Function(_$_HomeScreenState) then) =
      __$$_HomeScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NewReleaseListResponse? newReleaseListResponse,
      NewReleaseErrorResponse? newReleaseErrorResponse,
      bool isLoading});

  @override
  $NewReleaseListResponseCopyWith<$Res>? get newReleaseListResponse;
  @override
  $NewReleaseErrorResponseCopyWith<$Res>? get newReleaseErrorResponse;
}

/// @nodoc
class __$$_HomeScreenStateCopyWithImpl<$Res>
    extends _$HomeScreenStateCopyWithImpl<$Res, _$_HomeScreenState>
    implements _$$_HomeScreenStateCopyWith<$Res> {
  __$$_HomeScreenStateCopyWithImpl(
      _$_HomeScreenState _value, $Res Function(_$_HomeScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newReleaseListResponse = freezed,
    Object? newReleaseErrorResponse = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$_HomeScreenState(
      newReleaseListResponse: freezed == newReleaseListResponse
          ? _value.newReleaseListResponse
          : newReleaseListResponse // ignore: cast_nullable_to_non_nullable
              as NewReleaseListResponse?,
      newReleaseErrorResponse: freezed == newReleaseErrorResponse
          ? _value.newReleaseErrorResponse
          : newReleaseErrorResponse // ignore: cast_nullable_to_non_nullable
              as NewReleaseErrorResponse?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HomeScreenState implements _HomeScreenState {
  _$_HomeScreenState(
      {this.newReleaseListResponse = null,
      this.newReleaseErrorResponse = null,
      this.isLoading = false});

  @override
  @JsonKey()
  final NewReleaseListResponse? newReleaseListResponse;
  @override
  @JsonKey()
  final NewReleaseErrorResponse? newReleaseErrorResponse;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'HomeScreenState(newReleaseListResponse: $newReleaseListResponse, newReleaseErrorResponse: $newReleaseErrorResponse, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeScreenState &&
            (identical(other.newReleaseListResponse, newReleaseListResponse) ||
                other.newReleaseListResponse == newReleaseListResponse) &&
            (identical(
                    other.newReleaseErrorResponse, newReleaseErrorResponse) ||
                other.newReleaseErrorResponse == newReleaseErrorResponse) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, newReleaseListResponse, newReleaseErrorResponse, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeScreenStateCopyWith<_$_HomeScreenState> get copyWith =>
      __$$_HomeScreenStateCopyWithImpl<_$_HomeScreenState>(this, _$identity);
}

abstract class _HomeScreenState implements HomeScreenState {
  factory _HomeScreenState(
      {final NewReleaseListResponse? newReleaseListResponse,
      final NewReleaseErrorResponse? newReleaseErrorResponse,
      final bool isLoading}) = _$_HomeScreenState;

  @override
  NewReleaseListResponse? get newReleaseListResponse;
  @override
  NewReleaseErrorResponse? get newReleaseErrorResponse;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_HomeScreenStateCopyWith<_$_HomeScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
