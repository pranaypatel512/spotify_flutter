// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_error_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetailErrorResponse _$DetailErrorResponseFromJson(Map<String, dynamic> json) {
  return _DetailErrorResponse.fromJson(json);
}

/// @nodoc
mixin _$DetailErrorResponse {
  Error? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailErrorResponseCopyWith<DetailErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailErrorResponseCopyWith<$Res> {
  factory $DetailErrorResponseCopyWith(
          DetailErrorResponse value, $Res Function(DetailErrorResponse) then) =
      _$DetailErrorResponseCopyWithImpl<$Res, DetailErrorResponse>;
  @useResult
  $Res call({Error? error});

  $ErrorCopyWith<$Res>? get error;
}

/// @nodoc
class _$DetailErrorResponseCopyWithImpl<$Res, $Val extends DetailErrorResponse>
    implements $DetailErrorResponseCopyWith<$Res> {
  _$DetailErrorResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_DetailErrorResponseCopyWith<$Res>
    implements $DetailErrorResponseCopyWith<$Res> {
  factory _$$_DetailErrorResponseCopyWith(_$_DetailErrorResponse value,
          $Res Function(_$_DetailErrorResponse) then) =
      __$$_DetailErrorResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Error? error});

  @override
  $ErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$$_DetailErrorResponseCopyWithImpl<$Res>
    extends _$DetailErrorResponseCopyWithImpl<$Res, _$_DetailErrorResponse>
    implements _$$_DetailErrorResponseCopyWith<$Res> {
  __$$_DetailErrorResponseCopyWithImpl(_$_DetailErrorResponse _value,
      $Res Function(_$_DetailErrorResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_DetailErrorResponse(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DetailErrorResponse implements _DetailErrorResponse {
  _$_DetailErrorResponse({this.error});

  factory _$_DetailErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DetailErrorResponseFromJson(json);

  @override
  final Error? error;

  @override
  String toString() {
    return 'DetailErrorResponse(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailErrorResponse &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailErrorResponseCopyWith<_$_DetailErrorResponse> get copyWith =>
      __$$_DetailErrorResponseCopyWithImpl<_$_DetailErrorResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailErrorResponseToJson(
      this,
    );
  }
}

abstract class _DetailErrorResponse implements DetailErrorResponse {
  factory _DetailErrorResponse({final Error? error}) = _$_DetailErrorResponse;

  factory _DetailErrorResponse.fromJson(Map<String, dynamic> json) =
      _$_DetailErrorResponse.fromJson;

  @override
  Error? get error;
  @override
  @JsonKey(ignore: true)
  _$$_DetailErrorResponseCopyWith<_$_DetailErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
