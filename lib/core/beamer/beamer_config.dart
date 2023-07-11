import 'package:beamer/beamer.dart';
import 'package:spotify_flutter/feature/detail/beam/detail_location_beam.dart';
import 'package:spotify_flutter/feature/home/beam/home_location_beam.dart';
import 'package:spotify_flutter/feature/search/beam/search_location_beam.dart';

const String home = "home";
const String search = "search";
const String pathHome = "/$home";
const String pathSearch = "/$search";
const String pathHomeDetails = "$home/details";
const String pathSearchDetails = "$search/details";

final List<BeamerDelegate> routerDelegates = [
  BeamerDelegate(
    initialPath: pathHome,
    locationBuilder: (routeInformation, _) {
      if (routeInformation.location!.contains(pathHomeDetails)) {
        return DetailLocation(routeInformation);
      }
      if (routeInformation.location!.contains(pathHome)) {
        return HomeLocation(routeInformation);
      }
      return NotFound(path: routeInformation.location!);
    },
  ),
  BeamerDelegate(
    initialPath: pathSearch,
    locationBuilder: (routeInformation, _) {
      if (routeInformation.location!.contains(pathSearch)) {
        return SearchLocation(routeInformation);
      }
      return NotFound(path: routeInformation.location!);
    },
  ),
];
