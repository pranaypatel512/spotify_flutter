// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchScreenState {
  SearchResponse? get searchResponse => throw _privateConstructorUsedError;
  NewReleaseErrorResponse? get newReleaseErrorResponse =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isBlankResponse => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchScreenStateCopyWith<SearchScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchScreenStateCopyWith<$Res> {
  factory $SearchScreenStateCopyWith(
          SearchScreenState value, $Res Function(SearchScreenState) then) =
      _$SearchScreenStateCopyWithImpl<$Res, SearchScreenState>;
  @useResult
  $Res call(
      {SearchResponse? searchResponse,
      NewReleaseErrorResponse? newReleaseErrorResponse,
      bool isLoading,
      bool isBlankResponse});

  $SearchResponseCopyWith<$Res>? get searchResponse;
  $NewReleaseErrorResponseCopyWith<$Res>? get newReleaseErrorResponse;
}

/// @nodoc
class _$SearchScreenStateCopyWithImpl<$Res, $Val extends SearchScreenState>
    implements $SearchScreenStateCopyWith<$Res> {
  _$SearchScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchResponse = freezed,
    Object? newReleaseErrorResponse = freezed,
    Object? isLoading = null,
    Object? isBlankResponse = null,
  }) {
    return _then(_value.copyWith(
      searchResponse: freezed == searchResponse
          ? _value.searchResponse
          : searchResponse // ignore: cast_nullable_to_non_nullable
              as SearchResponse?,
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
  $SearchResponseCopyWith<$Res>? get searchResponse {
    if (_value.searchResponse == null) {
      return null;
    }

    return $SearchResponseCopyWith<$Res>(_value.searchResponse!, (value) {
      return _then(_value.copyWith(searchResponse: value) as $Val);
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
abstract class _$$_SearchScreenStateCopyWith<$Res>
    implements $SearchScreenStateCopyWith<$Res> {
  factory _$$_SearchScreenStateCopyWith(_$_SearchScreenState value,
          $Res Function(_$_SearchScreenState) then) =
      __$$_SearchScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SearchResponse? searchResponse,
      NewReleaseErrorResponse? newReleaseErrorResponse,
      bool isLoading,
      bool isBlankResponse});

  @override
  $SearchResponseCopyWith<$Res>? get searchResponse;
  @override
  $NewReleaseErrorResponseCopyWith<$Res>? get newReleaseErrorResponse;
}

/// @nodoc
class __$$_SearchScreenStateCopyWithImpl<$Res>
    extends _$SearchScreenStateCopyWithImpl<$Res, _$_SearchScreenState>
    implements _$$_SearchScreenStateCopyWith<$Res> {
  __$$_SearchScreenStateCopyWithImpl(
      _$_SearchScreenState _value, $Res Function(_$_SearchScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchResponse = freezed,
    Object? newReleaseErrorResponse = freezed,
    Object? isLoading = null,
    Object? isBlankResponse = null,
  }) {
    return _then(_$_SearchScreenState(
      searchResponse: freezed == searchResponse
          ? _value.searchResponse
          : searchResponse // ignore: cast_nullable_to_non_nullable
              as SearchResponse?,
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

class _$_SearchScreenState implements _SearchScreenState {
  _$_SearchScreenState(
      {this.searchResponse = null,
      this.newReleaseErrorResponse = null,
      this.isLoading = false,
      this.isBlankResponse = true});

  @override
  @JsonKey()
  final SearchResponse? searchResponse;
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
    return 'SearchScreenState(searchResponse: $searchResponse, newReleaseErrorResponse: $newReleaseErrorResponse, isLoading: $isLoading, isBlankResponse: $isBlankResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchScreenState &&
            (identical(other.searchResponse, searchResponse) ||
                other.searchResponse == searchResponse) &&
            (identical(
                    other.newReleaseErrorResponse, newReleaseErrorResponse) ||
                other.newReleaseErrorResponse == newReleaseErrorResponse) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isBlankResponse, isBlankResponse) ||
                other.isBlankResponse == isBlankResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchResponse,
      newReleaseErrorResponse, isLoading, isBlankResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchScreenStateCopyWith<_$_SearchScreenState> get copyWith =>
      __$$_SearchScreenStateCopyWithImpl<_$_SearchScreenState>(
          this, _$identity);
}

abstract class _SearchScreenState implements SearchScreenState {
  factory _SearchScreenState(
      {final SearchResponse? searchResponse,
      final NewReleaseErrorResponse? newReleaseErrorResponse,
      final bool isLoading,
      final bool isBlankResponse}) = _$_SearchScreenState;

  @override
  SearchResponse? get searchResponse;
  @override
  NewReleaseErrorResponse? get newReleaseErrorResponse;
  @override
  bool get isLoading;
  @override
  bool get isBlankResponse;
  @override
  @JsonKey(ignore: true)
  _$$_SearchScreenStateCopyWith<_$_SearchScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
