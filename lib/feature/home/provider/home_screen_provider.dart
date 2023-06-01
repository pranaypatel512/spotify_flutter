import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spotify_flutter/core/authtoken/provider/auth_token_provider.dart';
import 'package:spotify_flutter/core/common_provider/repository_provider.dart';
import 'package:spotify_flutter/feature/home/repository/home_new_release_repository.dart';
import 'package:spotify_flutter/feature/home/state/home_screen_state.dart';

final homeListProvider =
    StateNotifierProvider<HomeScreenListProvider, HomeScreenState>((ref) {
        final tokenState = ref.watch(authTokenProvider);
  return HomeScreenListProvider(ref.read(homeNewReleaseRepositoryProvider));
});

class HomeScreenListProvider extends StateNotifier<HomeScreenState> {
  HomeNewReleaseRepository homeNewReleaseRepository;
  HomeScreenListProvider(this.homeNewReleaseRepository)
      : super(HomeScreenState()) {
    getNewReleaseList();
  }

  Future<void> getNewReleaseList() async {
    state = state.copyWith(isLoading: true);
    await homeNewReleaseRepository
        .fetchNewReleaseList()
        .then((value) => state = value);
  }
}
