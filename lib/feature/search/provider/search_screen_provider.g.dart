// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_screen_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchSpotifyHash() => r'fc4750181e5af960f4393330c5a9290bfca18b39';

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

typedef SearchSpotifyRef = AutoDisposeFutureProviderRef<SearchScreenState>;

/// See also [searchSpotify].
@ProviderFor(searchSpotify)
const searchSpotifyProvider = SearchSpotifyFamily();

/// See also [searchSpotify].
class SearchSpotifyFamily extends Family<AsyncValue<SearchScreenState>> {
  /// See also [searchSpotify].
  const SearchSpotifyFamily();

  /// See also [searchSpotify].
  SearchSpotifyProvider call({
    required SearchRequest searchRequest,
  }) {
    return SearchSpotifyProvider(
      searchRequest: searchRequest,
    );
  }

  @override
  SearchSpotifyProvider getProviderOverride(
    covariant SearchSpotifyProvider provider,
  ) {
    return call(
      searchRequest: provider.searchRequest,
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
  String? get name => r'searchSpotifyProvider';
}

/// See also [searchSpotify].
class SearchSpotifyProvider
    extends AutoDisposeFutureProvider<SearchScreenState> {
  /// See also [searchSpotify].
  SearchSpotifyProvider({
    required this.searchRequest,
  }) : super.internal(
          (ref) => searchSpotify(
            ref,
            searchRequest: searchRequest,
          ),
          from: searchSpotifyProvider,
          name: r'searchSpotifyProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchSpotifyHash,
          dependencies: SearchSpotifyFamily._dependencies,
          allTransitiveDependencies:
              SearchSpotifyFamily._allTransitiveDependencies,
        );

  final SearchRequest searchRequest;

  @override
  bool operator ==(Object other) {
    return other is SearchSpotifyProvider &&
        other.searchRequest == searchRequest;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, searchRequest.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
