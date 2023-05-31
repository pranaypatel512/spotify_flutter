import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

/// Widget for the root/initial pages in the bottom navigation bar.
class HomeScreen extends StatelessWidget {
  /// Creates a RootScreen
  const HomeScreen({required this.label, required this.detailsPath, Key? key})
      : super(key: key);

  /// The label
  final String label;

  /// The path to the detail page
  final String detailsPath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tab root - $label'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Screen $label',
                style: Theme.of(context).textTheme.titleLarge),
            const Padding(padding: EdgeInsets.all(4)),
            TextButton(
              onPressed: () => Beamer.of(context).beamToNamed(detailsPath),
              child: const Text('View details'),
            ),
          ],
        ),
      ),
    );
  }
}
