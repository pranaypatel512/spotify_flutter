import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:spotify_flutter/core/common_provider/network_provider.dart';
import 'package:spotify_flutter/core/constants/network_constants.dart';
import 'package:spotify_flutter/core/netowork/dio_client.dart';
import 'package:spotify_flutter/core/netowork/dio_exceptions.dart';
import 'package:spotify_flutter/feature/home/state/home_screen_state.dart';

import '../search_response/search_response/search_response.dart';
import '../state/search_screen_state.dart';

part 'search_repository.g.dart';

class SpotifySearchRepository {
  final DioClient dioClient;

  SpotifySearchRepository({required this.dioClient});

  Future<SearchScreenState> searchSpotify(
      {String searchValue = '',
      String type = '',
      String? market = '',
      CancelToken? cancelToken}) async {
    try {
      final response = await dioClient.get(
          "${NetworkConstants.baseUrl}search?q=$searchValue&type=$type&market=$market");
      //if (response.statusCode == 200) {
      return SearchScreenState(
        searchResponse: SearchResponse.fromJson(response.data),
        isLoading: false,
        isBlankResponse: false,
      );
      //}
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e, 2).message;
      return SearchScreenState(
          newReleaseErrorResponse:
              errorMessage.toNewReleaseErrorResponseClass(errorMessage),
          isLoading: false,
          isBlankResponse: false);
    }
  }
}

@riverpod
SpotifySearchRepository spotifySearchRepository(
        SpotifySearchRepositoryRef ref) =>
    SpotifySearchRepository(
      dioClient: ref.watch(dioClientProvider),
    );
