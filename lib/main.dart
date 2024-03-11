import 'package:flutter/material.dart';
import 'package:training/week3/core/theme/light_theme.dart';
import 'package:training/week3/food_card/food_card.dart';
import 'package:training/week3/food_dashboard/food_dashboard_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: LightTheme.instance.data,
      home: FoodDashboardView(),
    );
  }
}
