import 'dart:developer';

import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spotify_flutter/core/authtoken/provider/auth_token_provider.dart';
import 'package:spotify_flutter/feature/home/provider/home_screen_provider.dart';

/// Widget for the root/initial pages in the bottom navigation bar.
class HomeScreen extends ConsumerStatefulWidget {
  /// Creates a RootScreen
  const HomeScreen({required this.label, required this.detailsPath});

  @override
  ConsumerState<HomeScreen> createState() => _MyHomePageState();

  /// The label
  final String label;

  /// The path to the detail page
  final String detailsPath;
}

class _MyHomePageState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final tokenState = ref.watch(authTokenProvider);
    final homeListState = ref.watch(homeListProvider);

    final isLoading = tokenState.isLoading || homeListState.isLoading;
    final hasError = tokenState.authTokenErrorResponse?.error ??
        homeListState.newReleaseErrorResponse?.error?.message;
    final items = homeListState.newReleaseListResponse;
    final textToDisplay =
        hasError ?? items?.albums?.items?.length.toString() ?? "";
        log("Count :${items?.albums?.items?.length.toString()}");
        log("hasError :$hasError");
        log("items :$items");
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: isLoading && textToDisplay.isNotEmpty
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Center(
                    child: Container(
                      child: Text(
                        textToDisplay,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ));
  }
}
