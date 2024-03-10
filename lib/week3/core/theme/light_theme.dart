import 'package:flutter/material.dart';
import 'package:training/week3/core/theme/iTheme.dart';

class LightTheme extends ITheme {
  static LightTheme? _instace;
  static LightTheme get instance {
    if (_instace != null) return _instace!;
    _instace = LightTheme._init();
    return _instace!;
  }

  LightTheme._init();

  final ThemeData _LightTheme = ThemeData.light();

  @override
  ThemeData get data => ThemeData(
        appBarTheme: _LightTheme.appBarTheme
            .copyWith(backgroundColor: Colors.white, centerTitle: true),
        colorScheme: _LightTheme.colorScheme.copyWith(
          primary: Colors.white,
          onPrimary: colors.lynch,
          secondary: Colors.green,
        ),
      );
}
