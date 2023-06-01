// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_release_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewReleaseListResponse _$NewReleaseListResponseFromJson(
    Map<String, dynamic> json) {
  return _NewReleaseListResponse.fromJson(json);
}

/// @nodoc
mixin _$NewReleaseListResponse {
  Albums? get albums => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewReleaseListResponseCopyWith<NewReleaseListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewReleaseListResponseCopyWith<$Res> {
  factory $NewReleaseListResponseCopyWith(NewReleaseListResponse value,
          $Res Function(NewReleaseListResponse) then) =
      _$NewReleaseListResponseCopyWithImpl<$Res, NewReleaseListResponse>;
  @useResult
  $Res call({Albums? albums});

  $AlbumsCopyWith<$Res>? get albums;
}

/// @nodoc
class _$NewReleaseListResponseCopyWithImpl<$Res,
        $Val extends NewReleaseListResponse>
    implements $NewReleaseListResponseCopyWith<$Res> {
  _$NewReleaseListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albums = freezed,
  }) {
    return _then(_value.copyWith(
      albums: freezed == albums
          ? _value.albums
          : albums // ignore: cast_nullable_to_non_nullable
              as Albums?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AlbumsCopyWith<$Res>? get albums {
    if (_value.albums == null) {
      return null;
    }

    return $AlbumsCopyWith<$Res>(_value.albums!, (value) {
      return _then(_value.copyWith(albums: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NewReleaseListResponseCopyWith<$Res>
    implements $NewReleaseListResponseCopyWith<$Res> {
  factory _$$_NewReleaseListResponseCopyWith(_$_NewReleaseListResponse value,
          $Res Function(_$_NewReleaseListResponse) then) =
      __$$_NewReleaseListResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Albums? albums});

  @override
  $AlbumsCopyWith<$Res>? get albums;
}

/// @nodoc
class __$$_NewReleaseListResponseCopyWithImpl<$Res>
    extends _$NewReleaseListResponseCopyWithImpl<$Res,
        _$_NewReleaseListResponse>
    implements _$$_NewReleaseListResponseCopyWith<$Res> {
  __$$_NewReleaseListResponseCopyWithImpl(_$_NewReleaseListResponse _value,
      $Res Function(_$_NewReleaseListResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albums = freezed,
  }) {
    return _then(_$_NewReleaseListResponse(
      albums: freezed == albums
          ? _value.albums
          : albums // ignore: cast_nullable_to_non_nullable
              as Albums?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewReleaseListResponse implements _NewReleaseListResponse {
  _$_NewReleaseListResponse({this.albums});

  factory _$_NewReleaseListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_NewReleaseListResponseFromJson(json);

  @override
  final Albums? albums;

  @override
  String toString() {
    return 'NewReleaseListResponse(albums: $albums)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewReleaseListResponse &&
            (identical(other.albums, albums) || other.albums == albums));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, albums);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewReleaseListResponseCopyWith<_$_NewReleaseListResponse> get copyWith =>
      __$$_NewReleaseListResponseCopyWithImpl<_$_NewReleaseListResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewReleaseListResponseToJson(
      this,
    );
  }
}

abstract class _NewReleaseListResponse implements NewReleaseListResponse {
  factory _NewReleaseListResponse({final Albums? albums}) =
      _$_NewReleaseListResponse;

  factory _NewReleaseListResponse.fromJson(Map<String, dynamic> json) =
      _$_NewReleaseListResponse.fromJson;

  @override
  Albums? get albums;
  @override
  @JsonKey(ignore: true)
  _$$_NewReleaseListResponseCopyWith<_$_NewReleaseListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
