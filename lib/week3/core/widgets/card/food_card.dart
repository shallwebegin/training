import 'package:flutter/material.dart';
import 'package:training/week3/food_card/model/food_model.dart';

class FoodCardWidget extends StatelessWidget {
  const FoodCardWidget({super.key, required this.model});
  final FoodModel model;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      child: Card(
        color: Theme.of(context).colorScheme.onSecondary,
        child: ListTile(
          leading: Image.asset(model.image),
          title: Text(model.title),
          trailing: Text(
            '£${model.money}',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
      ),
    );
  }
}
