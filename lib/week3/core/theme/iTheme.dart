// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:training/week3/core/color/color_theme.dart';

abstract class ITheme {
  ThemeData get data;
  final colors = ColorTheme();
}
