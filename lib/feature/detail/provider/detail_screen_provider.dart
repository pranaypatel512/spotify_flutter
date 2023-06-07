import 'dart:async';

import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:spotify_flutter/core/common_provider/repository_provider.dart';

import '../state/detail_screen_state.dart';
part 'detail_screen_provider.g.dart';

@riverpod
Future<DetailScreenState> getAlbumDetails(GetAlbumDetailsRef ref,
    {required String albumID}) async {
  final detailRepo = ref.watch(detailRepositoryProvider);
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
  if (albumID.isNotEmpty) {
    // Debounce the request. By having this delay, consumers can subscribe to
    // different parameters. In which case, this request will be aborted.
    await Future.delayed(const Duration(milliseconds: 500));
    if (cancelToken.isCancelled) throw AbortedException();
    return detailRepo.fetchAlumList(albumID: albumID);
  } else {
    return DetailScreenState(
        isBlankResponse: true); // when search query is blank
  }
}

class AbortedException implements Exception {}
