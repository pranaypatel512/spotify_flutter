import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spotify_flutter/feature/search/search_widget.dart';

/// The details screen for either the A or B screen.
class SearchScreen extends ConsumerWidget {
  /// Constructs a [SearchScreen].
  const SearchScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SpotifySearchBar()
          ],
        ),
      ),
    );
  }
}
