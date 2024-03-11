import 'package:flutter/material.dart';
import 'package:training/week3/core/images/image_constant.dart';
import 'package:training/week3/core/localize/app_strings.dart';

abstract class BaseStatefull<T extends StatefulWidget> extends State<T> {
  AppStrings appString = AppStrings.instance;

  TextTheme get textTheme => Theme.of(context).textTheme;

  ThemeData get theme => Theme.of(context);

  ColorScheme get colorSchema => Theme.of(context).colorScheme;

  ImageConstants? get imageConstants => ImageConstants.instance;

  EdgeInsets insetsAll = const EdgeInsets.all(30);
}
