import 'package:flutter/material.dart';
import 'package:training/week3/core/localize/app_strings.dart';
import 'package:training/week3/core/widgets/card/food_card.dart';
import 'package:training/week3/core/widgets/wrap/icon_text.dart';
import 'package:training/week3/food_card/food_card_view_model.dart';

class FoodCardView extends FoodCardViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: buildBodyPadding(context),
    );
  }

  Padding buildBodyPadding(BuildContext context) {
    return Padding(
      padding: insetsAll,
      child: buildColumnBody(context),
    );
  }

  Column buildColumnBody(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 4,
          child: buildListViewFoodList(),
        ),
        const Spacer(),
        Expanded(
            flex: 2,
            child: Column(
              children: [
                Expanded(
                  child: buildSubtitle(),
                ),
                Expanded(
                  child: buildDelivery(),
                ),
                Expanded(
                  child: buildRowTotal(),
                ),
              ],
            )),
        Expanded(
          flex: 2,
          child: buildElevatedCheckoutButton(context),
        ),
      ],
    );
  }

  ListView buildListViewFoodList() {
    return ListView.builder(
        itemCount: foodItemList.length,
        itemBuilder: (context, index) =>
            FoodCardWidget(model: foodItemList[index]));
  }

  Row buildSubtitle() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [buildTextSubtitle(appString.subTotal), Text('9.30₺')]);
  }

  Row buildDelivery() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [buildTextSubtitle(appString.delivery), Text('data')]);
  }

  Row buildRowTotal() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        appString.total,
        style: textTheme.headlineLarge!.copyWith(
            color: colorSchema.onPrimary, fontWeight: FontWeight.bold),
      ),
      Text(
        '9.30₺',
        style: textTheme.headlineLarge,
      )
    ]);
  }

  Text buildTextSubtitle(String title) {
    return Text(
      title,
      style: textTheme.bodyLarge!.copyWith(color: colorSchema.onPrimary),
    );
  }

  ElevatedButton buildElevatedCheckoutButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
          shape: MaterialStateProperty.all(const StadiumBorder()),
          backgroundColor: MaterialStateProperty.all(
              Theme.of(context).colorScheme.secondary)),
      child: Center(
        child: buildWrapIconText(),
      ),
    );
  }

  Widget buildWrapIconText() {
    return IconText(
        title: appString.checkOut, icon: Icons.arrow_right_alt_outlined);
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
