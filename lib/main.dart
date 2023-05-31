import 'package:beamer/beamer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify_flutter/beamer_config.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

import 'main_navigation.dart';

void main() {
  // turn off the # in the URLs on the web
  usePathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final routerDelegate = BeamerDelegate(
    initialPath: pathHome,
    locationBuilder: RoutesLocationBuilder(
      routes: {
        '*': (context, state, data) => const MainScreenNavigation(),
      },
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: FlexThemeData.dark(scheme: FlexScheme.blueM3,appBarElevation:0.7,fontFamily: 
      GoogleFonts.rubik().fontFamily,
              // We use the nicer Material 3 Typography in both M2 and M3 mode.
              typography: Typography.material2021(
                platform: defaultTargetPlatform,
              ) ),
      // The Mandy red, dark theme.
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.blueM3,appBarElevation:0.7,
      fontFamily: GoogleFonts.rubik().fontFamily,
              // We use the nicer Material 3 Typography in both M2 and M3 mode.
              typography: Typography.material2021(
                platform: defaultTargetPlatform,
              ) ),
      // Use dark or light theme based on system setting.
      themeMode: ThemeMode.system,
      routerDelegate: routerDelegate,
      routeInformationParser: BeamerParser(),
      backButtonDispatcher: BeamerBackButtonDispatcher(
        delegate: routerDelegate,
      ),
    );
  }
}






