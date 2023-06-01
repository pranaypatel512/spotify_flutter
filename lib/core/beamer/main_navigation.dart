import 'package:adaptive_navigation/adaptive_navigation.dart';
import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:spotify_flutter/core/beamer/beamer_config.dart';
// ignore: depend_on_referenced_packages

/// A widget class that shows the BottomNavigationBar and performs navigation
/// between tabs
class MainScreenNavigation extends StatefulWidget {
  const MainScreenNavigation({super.key});

  @override
  State<MainScreenNavigation> createState() => _MainScreenNavigationState();
}

class _MainScreenNavigationState extends State<MainScreenNavigation> {
  late int _currentIndex;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final uriString = Beamer.of(context).configuration.location!;
    _currentIndex = uriString.contains(pathHome) ? 0 : 1;
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveNavigationScaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          Beamer(
            routerDelegate: routerDelegates[0],
          ),
          Beamer(
            routerDelegate: routerDelegates[1],
          ),
        ],
      ),
      selectedIndex: _currentIndex,
      destinations: _allDestinations,
      onDestinationSelected: (index) {
        if (index != _currentIndex) {
          setState(() => _currentIndex = index);
          routerDelegates[_currentIndex].update(rebuild: false);
        }
      },
    );
  }
}

const _allDestinations = [
  AdaptiveScaffoldDestination(title: 'Home', icon: Icons.home),
  AdaptiveScaffoldDestination(title: 'Search', icon: Icons.search),
];
