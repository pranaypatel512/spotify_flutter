import 'dart:async';

import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:spotify_flutter/feature/search/repository/search_repository.dart';
import 'package:spotify_flutter/feature/search/search_request.dart';
import 'package:spotify_flutter/feature/search/state/search_screen_state.dart';

part 'search_screen_provider.g.dart';

@riverpod
Future<SearchScreenState> searchSpotify(SearchSpotifyRef ref,
    {required SearchRequest searchRequest}) async {
  final searchRepo = ref.watch(spotifySearchRepositoryProvider);
  final cancelToken = CancelToken();
  final link = ref.keepAlive();

  Timer? timer;

  ref.onDispose(() {
    cancelToken.cancel();
    timer?.cancel();
  });

  ref.onCancel(() {
    timer = Timer(const Duration(seconds: 30), () {
      link.close();
    });
  });

  ref.onResume(() {
    timer?.cancel();
  });
  if (searchRequest.query.isNotEmpty) {
    // Debounce the request. By having this delay, consumers can subscribe to
    // different parameters. In which case, this request will be aborted.
    await Future.delayed(const Duration(milliseconds: 500));
    if (cancelToken.isCancelled) throw AbortedException();
    return searchRepo.searchSpotify(
        searchValue: searchRequest.query,
        type: searchRequest.type,
        market: searchRequest.market);
  } else {
    return SearchScreenState(
        isBlankResponse: true); // when search query is blank
  }
}

class AbortedException implements Exception {}
