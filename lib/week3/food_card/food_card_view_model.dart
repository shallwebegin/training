import 'package:training/week3/core/base/base_statefull.dart';
import 'package:training/week3/food_card/food_card.dart';
import 'package:training/week3/food_card/model/food_model.dart';

abstract class FoodCardViewModel extends BaseStatefull<FoodCard> {
  late final List<FoodModel> foodItemList;

  @override
  void initState() {
    super.initState();
    foodItemList = [
      FoodModel(
          title: 'Broccoli', image: imageConstants!.broccoli, money: '10'),
      FoodModel(title: 'Kale', image: imageConstants!.kale, money: '20'),
      FoodModel(
          title: 'Red Peppers', image: imageConstants!.pepper, money: '30'),
      FoodModel(
          title: 'Strawberry', image: imageConstants!.strawBerry, money: '40'),
    ];
  }
}
