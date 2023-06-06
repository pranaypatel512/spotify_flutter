import 'package:beamer/beamer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:spotify_flutter/core/beamer/main_navigation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:spotify_flutter/core/pref/shared_pref_helper.dart';

import 'package:go_router/go_router.dart';
import 'package:spotify_flutter/feature/home/home_screen.dart';
import 'package:go_router/go_router.dart';

import 'core/beamer/beamer_config.dart';
import 'feature/search/search_screen.dart';

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
  final prefs = await SharedPreferences.getInstance();
  getIt.registerSingleton<SharedPreferenceHelper>(
    SharedPreferenceHelper(prefs: prefs),
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
//#1ed760
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        // theme: FlexThemeData.dark(
        //     scheme: FlexScheme.blueM3,
        //     appBarElevation: 0.7,
        //     fontFamily: GoogleFonts.rubik().fontFamily,
        //     // We use the nicer Material 3 Typography in both M2 and M3 mode.
        //     typography: Typography.material2021(
        //       platform: defaultTargetPlatform,
        //     )),
        // The Mandy red, dark theme.
        // darkTheme: FlexThemeData.dark(
        //     scheme: FlexScheme.blueM3,
        //     appBarElevation: 0.7,
        //     fontFamily: GoogleFonts.rubik().fontFamily,
        //     // We use the nicer Material 3 Typography in both M2 and M3 mode.
        //     typography: Typography.material2021(
            //   platform: defaultTargetPlatform,
            // )),
            theme: ThemeData(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.green, // or flexSwatch
    primaryColorDark: const Color(0xFF1ed760),
    brightness: Brightness.light,
  ),
),
darkTheme: ThemeData(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.green, // or flexSwatch
    primaryColorDark: const Color(0xFF1ed760),
    brightness: Brightness.dark,
  ),
),
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

  // @override
  // Widget build(BuildContext context) {
  //   return ProviderScope(
  //     child: MaterialApp.router(
  //       debugShowCheckedModeBanner: false,
  //       theme: FlexThemeData.light(
  //           scheme: FlexScheme.deepBlue,
  //           appBarElevation: 0.7,
  //           fontFamily: GoogleFonts.rubik().fontFamily,
  //           // We use the nicer Material 3 Typography in both M2 and M3 mode.
  //           typography: Typography.material2021(
  //             platform: defaultTargetPlatform,
  //           )),
  //       // The Mandy red, dark theme.
  //       darkTheme: FlexThemeData.dark(
  //           scheme: FlexScheme.blueM3,
  //           appBarElevation: 0.7,
  //           fontFamily: GoogleFonts.rubik().fontFamily,
  //           // We use the nicer Material 3 Typography in both M2 and M3 mode.
  //           typography: Typography.material2021(
  //             platform: defaultTargetPlatform,
  //           ),),
  //       // Use dark or light theme based on system setting.
  //       themeMode: ThemeMode.system,
  //       routerConfig: _goRouter,
  //     ),
  //   );
  // }
}

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

// final GoRouter _goRouter = GoRouter(
//     initialLocation: pathHome,
//     navigatorKey: _rootNavigatorKey,
//     routes: [
//       ShellRoute(
//           navigatorKey: _shellNavigatorKey,
//           builder: (context, state, child) {
//             return MainScreenNavigation(
//               child: child,
//             );
//           },
//           routes: [
//             GoRoute(
//               path: pathHome,
//               pageBuilder: (context, state) => NoTransitionPage(
//                 key: state.pageKey,
//                 child: const HomeScreen(),
//               ),
//               routes: const [
//                 // GoRoute(
//                 //   path: 'details',
//                 //   builder: (context, state) => const DetailsScreen(label: 'A'),
//                 // ),
//               ],
//             ),
//             GoRoute(
//               path: pathSearch,
//               pageBuilder: (context, state) => NoTransitionPage(
//                 key: state.pageKey,
//                 child: const SearchScreen(),
//               ),
//               routes: const [
//                 // GoRoute(
//                 //   path: 'details',
//                 //   builder: (context, state) => const DetailsScreen(label: 'A'),
//                 // ),
//               ],
//             )
//           ])
//     ]);
