import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spotify_flutter/core/authtoken/auth_token_repository.dart';
import 'package:spotify_flutter/core/authtoken/auth_token_state.dart';
import 'package:spotify_flutter/core/common_provider/repository_provider.dart';
import 'package:spotify_flutter/core/pref/shared_pref_helper.dart';

import '../../../main.dart';

final authTokenProvider =
    StateNotifierProvider<AuthTokenProvider, AuthTokenResponseState>((ref) {
  return AuthTokenProvider(ref.read(authTokenRepositoryProvider));
});

class AuthTokenProvider extends StateNotifier<AuthTokenResponseState> {
  final _prefsLocator = getIt.get<SharedPreferenceHelper>();
  AuthTokenRepository authTokenRepository;
  AuthTokenProvider(this.authTokenRepository)
      : super(AuthTokenResponseState()) {
    getAuthtoken();
  }

  Future<void> getAuthtoken() async {
    state = state.copyWith(isLoading: true);
    await authTokenRepository.fetchAuthToken().then((value) {
      _prefsLocator.setUserToken(
          userToken: value.authTokenResponse?.accessToken ?? "");
      state = value;
    });
  }
}
