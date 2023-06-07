import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

extension DarkMode on BuildContext {
  bool get isDark {
    return MediaQuery.of(this).platformBrightness == Brightness.dark;
  }
}
