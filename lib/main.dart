import 'package:beamer/beamer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_preferences_riverpod/shared_preferences_riverpod.dart';
import 'package:spotify_flutter/core/beamer/beamer_config.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:spotify_flutter/core/beamer/main_navigation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:spotify_flutter/core/pref/shared_pref_helper.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await initPref();
  // turn off the # in the URLs on the web
  usePathUrlStrategy();
  runApp(MyApp());
}

final getIt = GetIt.instance;
Future<void> initPref() async {
  final _prefs = await SharedPreferences.getInstance();
  getIt.registerSingleton<SharedPreferenceHelper>(
    SharedPreferenceHelper(prefs: _prefs),
  );
  //TODO: store token in storage and call token api only after 30 min exp time
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
    return ProviderScope(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: FlexThemeData.dark(
            scheme: FlexScheme.blueM3,
            appBarElevation: 0.7,
            fontFamily: GoogleFonts.rubik().fontFamily,
            // We use the nicer Material 3 Typography in both M2 and M3 mode.
            typography: Typography.material2021(
              platform: defaultTargetPlatform,
            )),
        // The Mandy red, dark theme.
        darkTheme: FlexThemeData.dark(
            scheme: FlexScheme.blueM3,
            appBarElevation: 0.7,
            fontFamily: GoogleFonts.rubik().fontFamily,
            // We use the nicer Material 3 Typography in both M2 and M3 mode.
            typography: Typography.material2021(
              platform: defaultTargetPlatform,
            )),
        // Use dark or light theme based on system setting.
        themeMode: ThemeMode.system,
        routerDelegate: routerDelegate,
        routeInformationParser: BeamerParser(),
        backButtonDispatcher: BeamerBackButtonDispatcher(
          delegate: routerDelegate,
        ),
      ),
    );
  }
}
