import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:spotify_flutter/core/beamer/beamer_config.dart';
import 'package:spotify_flutter/feature/home/home_screen.dart';
import 'package:spotify_flutter/feature/search/search_screen.dart';

/// Location defining the pages for the first tab
class HomeLocation extends BeamLocation<BeamState> {
  HomeLocation(super.routeInformation);
  @override
  List<String> get pathPatterns => ['/*'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) => [
        const BeamPage(
          key: ValueKey(home),
          title: "Home",
          type: BeamPageType.noTransition,
          child: HomeScreen(),
        ),
        // if (state.uri.pathSegments.length == 2)
        //   const BeamPage(
        //     key: ValueKey(pathHomeDetails),
        //     title: 'Home Details',
        //     child: SearchScreen(),
        //   ),
      ];
}
