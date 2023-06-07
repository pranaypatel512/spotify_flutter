import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:spotify_flutter/feature/detail/detail_screen.dart';

import '../../../core/beamer/beamer_config.dart';

class DetailLocation extends BeamLocation<BeamState> {
  DetailLocation(super.routeInformation);

  @override
  List<String> get pathPatterns => ['/details/:albumId'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) => [
        const BeamPage(
          key: ValueKey(pathHomeDetails),
          title: "Details",
          type: BeamPageType.noTransition,
          child: DetailScreen(
            albumId: '4aawyAB9vmqN3uQ7FjRGTy',
          ),
        ),
        if (state.pathParameters.containsKey('albumId'))
          BeamPage(
            key: ValueKey('details-${state.pathParameters['albumId']}'),
            title: "Details",
            child: DetailScreen(
              albumId: state.pathParameters['albumId'],
            ),
          ),
      ];
}
