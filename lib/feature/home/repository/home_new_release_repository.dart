import 'package:dio/dio.dart';
import 'package:spotify_flutter/core/constants/network_constants.dart';
import 'package:spotify_flutter/core/netowork/dio_client.dart';
import 'package:spotify_flutter/core/netowork/dio_exceptions.dart';
import 'package:spotify_flutter/feature/home/model/new_release_list_response/new_release_list_response.dart';
import 'package:spotify_flutter/feature/home/state/home_screen_state.dart';

class HomeNewReleaseRepository {
  final DioClient dioClient;

  HomeNewReleaseRepository({required this.dioClient});

  Future<HomeScreenState> fetchNewReleaseList() async {
    try {
      final response = await dioClient
          .get("${NetworkConstants.baseUrl}browse/new-releases?country=IN");
      //if (response.statusCode == 200) {
      return HomeScreenState(
          newReleaseListResponse:
              NewReleaseListResponse.fromJson(response.data),
          isLoading: false);
      //}
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e, 2).message;
      return HomeScreenState(
          newReleaseErrorResponse:
              errorMessage.toNewReleaseErrorResponseClass(errorMessage),
          isLoading: false);
    }
  }
}
