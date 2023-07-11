// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'album_details_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AlbumDetailsResponse _$AlbumDetailsResponseFromJson(Map<String, dynamic> json) {
  return _AlbumDetailsResponse.fromJson(json);
}

/// @nodoc
mixin _$AlbumDetailsResponse {
  @JsonKey(name: 'album_type')
  String? get albumType => throw _privateConstructorUsedError;
  List<Artist>? get artists => throw _privateConstructorUsedError;
  @JsonKey(name: 'available_markets')
  List<String>? get availableMarkets => throw _privateConstructorUsedError;
  List<Copyright>? get copyrights => throw _privateConstructorUsedError;
  @JsonKey(name: 'external_ids')
  ExternalIds? get externalIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'external_urls')
  ExternalUrls? get externalUrls => throw _privateConstructorUsedError;
  List<dynamic>? get genres => throw _privateConstructorUsedError;
  String? get href => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  List<Image>? get images => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String? get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date_precision')
  String? get releaseDatePrecision => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_tracks')
  int? get totalTracks => throw _privateConstructorUsedError;
  Tracks? get tracks => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get uri => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlbumDetailsResponseCopyWith<AlbumDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumDetailsResponseCopyWith<$Res> {
  factory $AlbumDetailsResponseCopyWith(AlbumDetailsResponse value,
          $Res Function(AlbumDetailsResponse) then) =
      _$AlbumDetailsResponseCopyWithImpl<$Res, AlbumDetailsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'album_type') String? albumType,
      List<Artist>? artists,
      @JsonKey(name: 'available_markets') List<String>? availableMarkets,
      List<Copyright>? copyrights,
      @JsonKey(name: 'external_ids') ExternalIds? externalIds,
      @JsonKey(name: 'external_urls') ExternalUrls? externalUrls,
      List<dynamic>? genres,
      String? href,
      String? id,
      List<Image>? images,
      String? label,
      String? name,
      int? popularity,
      @JsonKey(name: 'release_date') String? releaseDate,
      @JsonKey(name: 'release_date_precision') String? releaseDatePrecision,
      @JsonKey(name: 'total_tracks') int? totalTracks,
      Tracks? tracks,
      String? type,
      String? uri});

  $ExternalIdsCopyWith<$Res>? get externalIds;
  $ExternalUrlsCopyWith<$Res>? get externalUrls;
  $TracksCopyWith<$Res>? get tracks;
}

/// @nodoc
class _$AlbumDetailsResponseCopyWithImpl<$Res,
        $Val extends AlbumDetailsResponse>
    implements $AlbumDetailsResponseCopyWith<$Res> {
  _$AlbumDetailsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albumType = freezed,
    Object? artists = freezed,
    Object? availableMarkets = freezed,
    Object? copyrights = freezed,
    Object? externalIds = freezed,
    Object? externalUrls = freezed,
    Object? genres = freezed,
    Object? href = freezed,
    Object? id = freezed,
    Object? images = freezed,
    Object? label = freezed,
    Object? name = freezed,
    Object? popularity = freezed,
    Object? releaseDate = freezed,
    Object? releaseDatePrecision = freezed,
    Object? totalTracks = freezed,
    Object? tracks = freezed,
    Object? type = freezed,
    Object? uri = freezed,
  }) {
    return _then(_value.copyWith(
      albumType: freezed == albumType
          ? _value.albumType
          : albumType // ignore: cast_nullable_to_non_nullable
              as String?,
      artists: freezed == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>?,
      availableMarkets: freezed == availableMarkets
          ? _value.availableMarkets
          : availableMarkets // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      copyrights: freezed == copyrights
          ? _value.copyrights
          : copyrights // ignore: cast_nullable_to_non_nullable
              as List<Copyright>?,
      externalIds: freezed == externalIds
          ? _value.externalIds
          : externalIds // ignore: cast_nullable_to_non_nullable
              as ExternalIds?,
      externalUrls: freezed == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as int?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDatePrecision: freezed == releaseDatePrecision
          ? _value.releaseDatePrecision
          : releaseDatePrecision // ignore: cast_nullable_to_non_nullable
              as String?,
      totalTracks: freezed == totalTracks
          ? _value.totalTracks
          : totalTracks // ignore: cast_nullable_to_non_nullable
              as int?,
      tracks: freezed == tracks
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as Tracks?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExternalIdsCopyWith<$Res>? get externalIds {
    if (_value.externalIds == null) {
      return null;
    }

    return $ExternalIdsCopyWith<$Res>(_value.externalIds!, (value) {
      return _then(_value.copyWith(externalIds: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ExternalUrlsCopyWith<$Res>? get externalUrls {
    if (_value.externalUrls == null) {
      return null;
    }

    return $ExternalUrlsCopyWith<$Res>(_value.externalUrls!, (value) {
      return _then(_value.copyWith(externalUrls: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TracksCopyWith<$Res>? get tracks {
    if (_value.tracks == null) {
      return null;
    }

    return $TracksCopyWith<$Res>(_value.tracks!, (value) {
      return _then(_value.copyWith(tracks: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AlbumDetailsResponseCopyWith<$Res>
    implements $AlbumDetailsResponseCopyWith<$Res> {
  factory _$$_AlbumDetailsResponseCopyWith(_$_AlbumDetailsResponse value,
          $Res Function(_$_AlbumDetailsResponse) then) =
      __$$_AlbumDetailsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'album_type') String? albumType,
      List<Artist>? artists,
      @JsonKey(name: 'available_markets') List<String>? availableMarkets,
      List<Copyright>? copyrights,
      @JsonKey(name: 'external_ids') ExternalIds? externalIds,
      @JsonKey(name: 'external_urls') ExternalUrls? externalUrls,
      List<dynamic>? genres,
      String? href,
      String? id,
      List<Image>? images,
      String? label,
      String? name,
      int? popularity,
      @JsonKey(name: 'release_date') String? releaseDate,
      @JsonKey(name: 'release_date_precision') String? releaseDatePrecision,
      @JsonKey(name: 'total_tracks') int? totalTracks,
      Tracks? tracks,
      String? type,
      String? uri});

  @override
  $ExternalIdsCopyWith<$Res>? get externalIds;
  @override
  $ExternalUrlsCopyWith<$Res>? get externalUrls;
  @override
  $TracksCopyWith<$Res>? get tracks;
}

/// @nodoc
class __$$_AlbumDetailsResponseCopyWithImpl<$Res>
    extends _$AlbumDetailsResponseCopyWithImpl<$Res, _$_AlbumDetailsResponse>
    implements _$$_AlbumDetailsResponseCopyWith<$Res> {
  __$$_AlbumDetailsResponseCopyWithImpl(_$_AlbumDetailsResponse _value,
      $Res Function(_$_AlbumDetailsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albumType = freezed,
    Object? artists = freezed,
    Object? availableMarkets = freezed,
    Object? copyrights = freezed,
    Object? externalIds = freezed,
    Object? externalUrls = freezed,
    Object? genres = freezed,
    Object? href = freezed,
    Object? id = freezed,
    Object? images = freezed,
    Object? label = freezed,
    Object? name = freezed,
    Object? popularity = freezed,
    Object? releaseDate = freezed,
    Object? releaseDatePrecision = freezed,
    Object? totalTracks = freezed,
    Object? tracks = freezed,
    Object? type = freezed,
    Object? uri = freezed,
  }) {
    return _then(_$_AlbumDetailsResponse(
      albumType: freezed == albumType
          ? _value.albumType
          : albumType // ignore: cast_nullable_to_non_nullable
              as String?,
      artists: freezed == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>?,
      availableMarkets: freezed == availableMarkets
          ? _value._availableMarkets
          : availableMarkets // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      copyrights: freezed == copyrights
          ? _value._copyrights
          : copyrights // ignore: cast_nullable_to_non_nullable
              as List<Copyright>?,
      externalIds: freezed == externalIds
          ? _value.externalIds
          : externalIds // ignore: cast_nullable_to_non_nullable
              as ExternalIds?,
      externalUrls: freezed == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls?,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as int?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDatePrecision: freezed == releaseDatePrecision
          ? _value.releaseDatePrecision
          : releaseDatePrecision // ignore: cast_nullable_to_non_nullable
              as String?,
      totalTracks: freezed == totalTracks
          ? _value.totalTracks
          : totalTracks // ignore: cast_nullable_to_non_nullable
              as int?,
      tracks: freezed == tracks
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as Tracks?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AlbumDetailsResponse implements _AlbumDetailsResponse {
  _$_AlbumDetailsResponse(
      {@JsonKey(name: 'album_type') this.albumType,
      final List<Artist>? artists,
      @JsonKey(name: 'available_markets') final List<String>? availableMarkets,
      final List<Copyright>? copyrights,
      @JsonKey(name: 'external_ids') this.externalIds,
      @JsonKey(name: 'external_urls') this.externalUrls,
      final List<dynamic>? genres,
      this.href,
      this.id,
      final List<Image>? images,
      this.label,
      this.name,
      this.popularity,
      @JsonKey(name: 'release_date') this.releaseDate,
      @JsonKey(name: 'release_date_precision') this.releaseDatePrecision,
      @JsonKey(name: 'total_tracks') this.totalTracks,
      this.tracks,
      this.type,
      this.uri})
      : _artists = artists,
        _availableMarkets = availableMarkets,
        _copyrights = copyrights,
        _genres = genres,
        _images = images;

  factory _$_AlbumDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AlbumDetailsResponseFromJson(json);

  @override
  @JsonKey(name: 'album_type')
  final String? albumType;
  final List<Artist>? _artists;
  @override
  List<Artist>? get artists {
    final value = _artists;
    if (value == null) return null;
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _availableMarkets;
  @override
  @JsonKey(name: 'available_markets')
  List<String>? get availableMarkets {
    final value = _availableMarkets;
    if (value == null) return null;
    if (_availableMarkets is EqualUnmodifiableListView)
      return _availableMarkets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Copyright>? _copyrights;
  @override
  List<Copyright>? get copyrights {
    final value = _copyrights;
    if (value == null) return null;
    if (_copyrights is EqualUnmodifiableListView) return _copyrights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'external_ids')
  final ExternalIds? externalIds;
  @override
  @JsonKey(name: 'external_urls')
  final ExternalUrls? externalUrls;
  final List<dynamic>? _genres;
  @override
  List<dynamic>? get genres {
    final value = _genres;
    if (value == null) return null;
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? href;
  @override
  final String? id;
  final List<Image>? _images;
  @override
  List<Image>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? label;
  @override
  final String? name;
  @override
  final int? popularity;
  @override
  @JsonKey(name: 'release_date')
  final String? releaseDate;
  @override
  @JsonKey(name: 'release_date_precision')
  final String? releaseDatePrecision;
  @override
  @JsonKey(name: 'total_tracks')
  final int? totalTracks;
  @override
  final Tracks? tracks;
  @override
  final String? type;
  @override
  final String? uri;

  @override
  String toString() {
    return 'AlbumDetailsResponse(albumType: $albumType, artists: $artists, availableMarkets: $availableMarkets, copyrights: $copyrights, externalIds: $externalIds, externalUrls: $externalUrls, genres: $genres, href: $href, id: $id, images: $images, label: $label, name: $name, popularity: $popularity, releaseDate: $releaseDate, releaseDatePrecision: $releaseDatePrecision, totalTracks: $totalTracks, tracks: $tracks, type: $type, uri: $uri)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AlbumDetailsResponse &&
            (identical(other.albumType, albumType) ||
                other.albumType == albumType) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            const DeepCollectionEquality()
                .equals(other._availableMarkets, _availableMarkets) &&
            const DeepCollectionEquality()
                .equals(other._copyrights, _copyrights) &&
            (identical(other.externalIds, externalIds) ||
                other.externalIds == externalIds) &&
            (identical(other.externalUrls, externalUrls) ||
                other.externalUrls == externalUrls) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.releaseDatePrecision, releaseDatePrecision) ||
                other.releaseDatePrecision == releaseDatePrecision) &&
            (identical(other.totalTracks, totalTracks) ||
                other.totalTracks == totalTracks) &&
            (identical(other.tracks, tracks) || other.tracks == tracks) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.uri, uri) || other.uri == uri));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        albumType,
        const DeepCollectionEquality().hash(_artists),
        const DeepCollectionEquality().hash(_availableMarkets),
        const DeepCollectionEquality().hash(_copyrights),
        externalIds,
        externalUrls,
        const DeepCollectionEquality().hash(_genres),
        href,
        id,
        const DeepCollectionEquality().hash(_images),
        label,
        name,
        popularity,
        releaseDate,
        releaseDatePrecision,
        totalTracks,
        tracks,
        type,
        uri
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AlbumDetailsResponseCopyWith<_$_AlbumDetailsResponse> get copyWith =>
      __$$_AlbumDetailsResponseCopyWithImpl<_$_AlbumDetailsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AlbumDetailsResponseToJson(
      this,
    );
  }
}

abstract class _AlbumDetailsResponse implements AlbumDetailsResponse {
  factory _AlbumDetailsResponse(
      {@JsonKey(name: 'album_type')
          final String? albumType,
      final List<Artist>? artists,
      @JsonKey(name: 'available_markets')
          final List<String>? availableMarkets,
      final List<Copyright>? copyrights,
      @JsonKey(name: 'external_ids')
          final ExternalIds? externalIds,
      @JsonKey(name: 'external_urls')
          final ExternalUrls? externalUrls,
      final List<dynamic>? genres,
      final String? href,
      final String? id,
      final List<Image>? images,
      final String? label,
      final String? name,
      final int? popularity,
      @JsonKey(name: 'release_date')
          final String? releaseDate,
      @JsonKey(name: 'release_date_precision')
          final String? releaseDatePrecision,
      @JsonKey(name: 'total_tracks')
          final int? totalTracks,
      final Tracks? tracks,
      final String? type,
      final String? uri}) = _$_AlbumDetailsResponse;

  factory _AlbumDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_AlbumDetailsResponse.fromJson;

  @override
  @JsonKey(name: 'album_type')
  String? get albumType;
  @override
  List<Artist>? get artists;
  @override
  @JsonKey(name: 'available_markets')
  List<String>? get availableMarkets;
  @override
  List<Copyright>? get copyrights;
  @override
  @JsonKey(name: 'external_ids')
  ExternalIds? get externalIds;
  @override
  @JsonKey(name: 'external_urls')
  ExternalUrls? get externalUrls;
  @override
  List<dynamic>? get genres;
  @override
  String? get href;
  @override
  String? get id;
  @override
  List<Image>? get images;
  @override
  String? get label;
  @override
  String? get name;
  @override
  int? get popularity;
  @override
  @JsonKey(name: 'release_date')
  String? get releaseDate;
  @override
  @JsonKey(name: 'release_date_precision')
  String? get releaseDatePrecision;
  @override
  @JsonKey(name: 'total_tracks')
  int? get totalTracks;
  @override
  Tracks? get tracks;
  @override
  String? get type;
  @override
  String? get uri;
  @override
  @JsonKey(ignore: true)
  _$$_AlbumDetailsResponseCopyWith<_$_AlbumDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
