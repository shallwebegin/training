import 'package:flutter/material.dart';
import 'package:training/week3/core/base/base_statefull.dart';

class FoodDashboardView extends StatefulWidget {
  const FoodDashboardView({super.key});

  @override
  State<FoodDashboardView> createState() => _FoodDashboardViewState();
}

class _FoodDashboardViewState extends BaseStatefull<FoodDashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Dashboard'),
      ),
      body: ListView(),
    );
  }
}
