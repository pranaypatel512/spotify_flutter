// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailScreenState {
  AlbumDetailsResponse? get albumDetailResponse =>
      throw _privateConstructorUsedError;
  NewReleaseErrorResponse? get newReleaseErrorResponse =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isBlankResponse => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailScreenStateCopyWith<DetailScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailScreenStateCopyWith<$Res> {
  factory $DetailScreenStateCopyWith(
          DetailScreenState value, $Res Function(DetailScreenState) then) =
      _$DetailScreenStateCopyWithImpl<$Res, DetailScreenState>;
  @useResult
  $Res call(
      {AlbumDetailsResponse? albumDetailResponse,
      NewReleaseErrorResponse? newReleaseErrorResponse,
      bool isLoading,
      bool isBlankResponse});

  $AlbumDetailsResponseCopyWith<$Res>? get albumDetailResponse;
  $NewReleaseErrorResponseCopyWith<$Res>? get newReleaseErrorResponse;
}

/// @nodoc
class _$DetailScreenStateCopyWithImpl<$Res, $Val extends DetailScreenState>
    implements $DetailScreenStateCopyWith<$Res> {
  _$DetailScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albumDetailResponse = freezed,
    Object? newReleaseErrorResponse = freezed,
    Object? isLoading = null,
    Object? isBlankResponse = null,
  }) {
    return _then(_value.copyWith(
      albumDetailResponse: freezed == albumDetailResponse
          ? _value.albumDetailResponse
          : albumDetailResponse // ignore: cast_nullable_to_non_nullable
              as AlbumDetailsResponse?,
      newReleaseErrorResponse: freezed == newReleaseErrorResponse
          ? _value.newReleaseErrorResponse
          : newReleaseErrorResponse // ignore: cast_nullable_to_non_nullable
              as NewReleaseErrorResponse?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isBlankResponse: null == isBlankResponse
          ? _value.isBlankResponse
          : isBlankResponse // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AlbumDetailsResponseCopyWith<$Res>? get albumDetailResponse {
    if (_value.albumDetailResponse == null) {
      return null;
    }

    return $AlbumDetailsResponseCopyWith<$Res>(_value.albumDetailResponse!,
        (value) {
      return _then(_value.copyWith(albumDetailResponse: value) as $Val);
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
abstract class _$$_DetailScreenStateCopyWith<$Res>
    implements $DetailScreenStateCopyWith<$Res> {
  factory _$$_DetailScreenStateCopyWith(_$_DetailScreenState value,
          $Res Function(_$_DetailScreenState) then) =
      __$$_DetailScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AlbumDetailsResponse? albumDetailResponse,
      NewReleaseErrorResponse? newReleaseErrorResponse,
      bool isLoading,
      bool isBlankResponse});

  @override
  $AlbumDetailsResponseCopyWith<$Res>? get albumDetailResponse;
  @override
  $NewReleaseErrorResponseCopyWith<$Res>? get newReleaseErrorResponse;
}

/// @nodoc
class __$$_DetailScreenStateCopyWithImpl<$Res>
    extends _$DetailScreenStateCopyWithImpl<$Res, _$_DetailScreenState>
    implements _$$_DetailScreenStateCopyWith<$Res> {
  __$$_DetailScreenStateCopyWithImpl(
      _$_DetailScreenState _value, $Res Function(_$_DetailScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albumDetailResponse = freezed,
    Object? newReleaseErrorResponse = freezed,
    Object? isLoading = null,
    Object? isBlankResponse = null,
  }) {
    return _then(_$_DetailScreenState(
      albumDetailResponse: freezed == albumDetailResponse
          ? _value.albumDetailResponse
          : albumDetailResponse // ignore: cast_nullable_to_non_nullable
              as AlbumDetailsResponse?,
      newReleaseErrorResponse: freezed == newReleaseErrorResponse
          ? _value.newReleaseErrorResponse
          : newReleaseErrorResponse // ignore: cast_nullable_to_non_nullable
              as NewReleaseErrorResponse?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isBlankResponse: null == isBlankResponse
          ? _value.isBlankResponse
          : isBlankResponse // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_DetailScreenState implements _DetailScreenState {
  _$_DetailScreenState(
      {this.albumDetailResponse = null,
      this.newReleaseErrorResponse = null,
      this.isLoading = false,
      this.isBlankResponse = true});

  @override
  @JsonKey()
  final AlbumDetailsResponse? albumDetailResponse;
  @override
  @JsonKey()
  final NewReleaseErrorResponse? newReleaseErrorResponse;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isBlankResponse;

  @override
  String toString() {
    return 'DetailScreenState(albumDetailResponse: $albumDetailResponse, newReleaseErrorResponse: $newReleaseErrorResponse, isLoading: $isLoading, isBlankResponse: $isBlankResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailScreenState &&
            (identical(other.albumDetailResponse, albumDetailResponse) ||
                other.albumDetailResponse == albumDetailResponse) &&
            (identical(
                    other.newReleaseErrorResponse, newReleaseErrorResponse) ||
                other.newReleaseErrorResponse == newReleaseErrorResponse) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isBlankResponse, isBlankResponse) ||
                other.isBlankResponse == isBlankResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, albumDetailResponse,
      newReleaseErrorResponse, isLoading, isBlankResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailScreenStateCopyWith<_$_DetailScreenState> get copyWith =>
      __$$_DetailScreenStateCopyWithImpl<_$_DetailScreenState>(
          this, _$identity);
}

abstract class _DetailScreenState implements DetailScreenState {
  factory _DetailScreenState(
      {final AlbumDetailsResponse? albumDetailResponse,
      final NewReleaseErrorResponse? newReleaseErrorResponse,
      final bool isLoading,
      final bool isBlankResponse}) = _$_DetailScreenState;

  @override
  AlbumDetailsResponse? get albumDetailResponse;
  @override
  NewReleaseErrorResponse? get newReleaseErrorResponse;
  @override
  bool get isLoading;
  @override
  bool get isBlankResponse;
  @override
  @JsonKey(ignore: true)
  _$$_DetailScreenStateCopyWith<_$_DetailScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
