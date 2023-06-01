import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:spotify_flutter/core/netowork/Interceptor/dio_interceptor.dart';
import 'package:spotify_flutter/core/netowork/dio_client.dart';

part 'network_provider.g.dart';

@riverpod
Dio dio(DioRef ref) {
  final dio = Dio();
  dio.interceptors.add(DioInterceptor());
  return dio;
}

@riverpod
DioClient dioClient(DioClientRef ref) {
  final dio = ref.watch(dioProvider);
  return DioClient(dio);
}
