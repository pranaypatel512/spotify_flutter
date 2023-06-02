import 'package:adaptive_navigation/adaptive_navigation.dart';
import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spotify_flutter/core/beamer/beamer_config.dart';
// ignore: depend_on_referenced_packages

/// A widget class that shows the BottomNavigationBar and performs navigation
/// between tabs
class MainScreenNavigation extends StatefulWidget {
  const MainScreenNavigation({Key? key, required this.child}): super(key: key);
  final Widget child;

  @override
  State<MainScreenNavigation> createState() => _MainScreenNavigationState();
}

class _MainScreenNavigationState extends State<MainScreenNavigation> {
  // getter that computes the current index from the current location,
  // using the helper method below
  int get _currentIndex => 
  _locationToTabIndex(GoRouter.of(context).location);

  int _locationToTabIndex(String location) {
    final index =
        _allDestinations.indexWhere((t) => location.startsWith(t.initialLocation));
    // if index not found (-1), return 0
    return index < 0 ? 0 : index;
  }

  // callback used to navigate to the desired tab
  void _onItemTapped(BuildContext context, int tabIndex) {
    if (tabIndex != _currentIndex) {
      // go to the initial location of the selected tab (by index)
      context.go(_allDestinations[tabIndex].initialLocation);
    }
  }


  @override
  Widget build(BuildContext context) {
    // return AdaptiveNavigationScaffold(
    //   body: IndexedStack(
    //     index: _currentIndex,
    //     children: [
    //       Beamer(
    //         routerDelegate: routerDelegates[0],
    //       ),
    //       Beamer(
    //         routerDelegate: routerDelegates[1],
    //       ),
    //     ],
    //   ),
    //   selectedIndex: _currentIndex,
    //   destinations: _allDestinations,
    //   onDestinationSelected: (index) {
    //     if (index != _currentIndex) {
    //       setState(() => _currentIndex = index);
    //       routerDelegates[_currentIndex].update(rebuild: false);
    //     }
    //   },
    // );
    return AdaptiveNavigationScaffold(body: widget.child, 
    selectedIndex: _currentIndex, destinations: _allDestinations,
      onDestinationSelected: (index) {
        if (index != _currentIndex) {
          _onItemTapped(context, index);
        }
      },);
  }
}

const _allDestinations = [
  ScaffoldWithNavBarTabItem(initialLocation:home,label: 'Home', icon: Icons.home),
  ScaffoldWithNavBarTabItem(initialLocation:home,label: 'Search', icon: Icons.search)
];

/// Representation of a tab item in the [ScaffoldWithBottomNavBar]
class ScaffoldWithNavBarTabItem extends AdaptiveScaffoldDestination {
  const ScaffoldWithNavBarTabItem(
      {required this.initialLocation,  required String label,required IconData icon,})
      : super(icon: icon, title: label);

  /// The initial location/path
  final String initialLocation;
}