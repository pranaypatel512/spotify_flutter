import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:spotify_flutter/core/constants/network_constants.dart';
import 'package:spotify_flutter/main.dart';

import '../../pref/shared_pref_helper.dart';

class DioInterceptor extends Interceptor {
  final _prefsLocator = getIt.get<SharedPreferenceHelper>();

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (options.path == NetworkConstants.baseUrlAuth) {
      options.contentType = Headers.formUrlEncodedContentType;
    } else {
      options.headers['Authorization'] =
          'Bearer ${_prefsLocator.getUserToken()}';
    }
    log("Request[${options.method}] => PATH: ${options.path} => Data: ${options.data}");
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log('⬅️ Received network response');
    log('${response.statusCode != 200 ? '❌ ${response.statusCode} ❌' : '✅ 200 ✅'} ${response.requestOptions.baseUrl}${response.requestOptions.path}');
    log('Query params: ${response.requestOptions.queryParameters}');
    log('-------------------------');
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    log("Error[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}");
    super.onError(err, handler);
  }
}
