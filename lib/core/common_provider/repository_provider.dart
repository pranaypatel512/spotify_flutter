import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:spotify_flutter/core/authtoken/auth_token_repository.dart';
import 'package:spotify_flutter/core/common_provider/network_provider.dart';
import 'package:spotify_flutter/feature/detail/repository/detail_repository.dart';
import 'package:spotify_flutter/feature/home/repository/home_new_release_repository.dart';

part 'repository_provider.g.dart';

@riverpod
AuthTokenRepository authTokenRepository(AuthTokenRepositoryRef ref) {
  final dioClient = ref.watch(dioClientProvider);
  return AuthTokenRepository(dioClient: dioClient);
}

@riverpod
HomeNewReleaseRepository homeNewReleaseRepository(
    HomeNewReleaseRepositoryRef ref) {
  final dioClient = ref.watch(dioClientProvider);
  return HomeNewReleaseRepository(dioClient: dioClient);
}

@riverpod
DetailRepository detailRepository(
    DetailRepositoryRef ref) {
  final dioClient = ref.watch(dioClientProvider);
  return DetailRepository(dioClient: dioClient);
}
