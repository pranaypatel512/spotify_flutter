import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:spotify_flutter/core/constants/network_constants.dart';
import 'package:spotify_flutter/core/netowork/dio_client.dart';
import 'package:spotify_flutter/core/netowork/dio_exceptions.dart';
import 'package:spotify_flutter/feature/home/state/home_screen_state.dart';

import '../../../core/common_provider/network_provider.dart';
import '../album_details_response/album_details_response.dart';
import '../state/detail_screen_state.dart';

part 'detail_repository.g.dart';

class DetailRepository {
  final DioClient dioClient;

  DetailRepository({required this.dioClient});

  Future<DetailScreenState> fetchAlumList(
      {String albumID = '', CancelToken? cancelToken}) async {
    try {
      final response = await dioClient
          .get("${NetworkConstants.baseUrl}albums/$albumID");
      //if (response.statusCode == 200) {
      return DetailScreenState(
        albumDetailResponse: AlbumDetailsResponse.fromJson(response.data),
        isLoading: false,
        isBlankResponse: false,
      );
      //}
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e, 2).message;
      return DetailScreenState(
          newReleaseErrorResponse:
              errorMessage.toNewReleaseErrorResponseClass(errorMessage),
          isLoading: false,
          isBlankResponse: false);
    }
  }
}

@riverpod
DetailRepository detailRepository(DetailRepositoryRef ref) => DetailRepository(
      dioClient: ref.watch(dioClientProvider),
    );
