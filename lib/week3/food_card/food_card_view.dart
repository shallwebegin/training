import 'package:flutter/material.dart';
import 'package:training/week3/core/localize/app_strings.dart';
import 'package:training/week3/food_card/food_card_view_model.dart';

class FoodCardView extends FoodCardViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Column(children: [
        Expanded(flex: 4, child: Container(color: Colors.red)),
        Expanded(child: Container(color: Colors.blue)),
        const Expanded(flex: 2, child: Text('hacibab')),
        Expanded(
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                shape: MaterialStateProperty.all(const StadiumBorder()),
                backgroundColor: MaterialStateProperty.all(
                    Theme.of(context).colorScheme.secondary)),
            child: const Center(child: Text('Checkout')),
          ),
        ),
      ]),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(
        AppStrings.instance.cardTitle,
        style: Theme.of(context)
            .textTheme
            .headlineLarge!
            .copyWith(color: Theme.of(context).colorScheme.onPrimary),
      ),
    );
  }
}
