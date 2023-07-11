// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_screen_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getAlbumDetailsHash() => r'85fadb05dc931bf1c87a2c2de4b5ab4e79a745bf';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef GetAlbumDetailsRef = AutoDisposeFutureProviderRef<DetailScreenState>;

/// See also [getAlbumDetails].
@ProviderFor(getAlbumDetails)
const getAlbumDetailsProvider = GetAlbumDetailsFamily();

/// See also [getAlbumDetails].
class GetAlbumDetailsFamily extends Family<AsyncValue<DetailScreenState>> {
  /// See also [getAlbumDetails].
  const GetAlbumDetailsFamily();

  /// See also [getAlbumDetails].
  GetAlbumDetailsProvider call({
    required String albumID,
  }) {
    return GetAlbumDetailsProvider(
      albumID: albumID,
    );
  }

  @override
  GetAlbumDetailsProvider getProviderOverride(
    covariant GetAlbumDetailsProvider provider,
  ) {
    return call(
      albumID: provider.albumID,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getAlbumDetailsProvider';
}

/// See also [getAlbumDetails].
class GetAlbumDetailsProvider
    extends AutoDisposeFutureProvider<DetailScreenState> {
  /// See also [getAlbumDetails].
  GetAlbumDetailsProvider({
    required this.albumID,
  }) : super.internal(
          (ref) => getAlbumDetails(
            ref,
            albumID: albumID,
          ),
          from: getAlbumDetailsProvider,
          name: r'getAlbumDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getAlbumDetailsHash,
          dependencies: GetAlbumDetailsFamily._dependencies,
          allTransitiveDependencies:
              GetAlbumDetailsFamily._allTransitiveDependencies,
        );

  final String albumID;

  @override
  bool operator ==(Object other) {
    return other is GetAlbumDetailsProvider && other.albumID == albumID;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, albumID.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
