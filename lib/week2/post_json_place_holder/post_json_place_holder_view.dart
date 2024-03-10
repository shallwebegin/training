import 'package:flutter/material.dart';
import 'package:training/week2/core/component/card/post_card.dart';

import 'post_json_place_holder_view_model.dart';

class PostJsonPlaceHolderView extends PostJsonPlaceHolderViewModel {
  final String title = 'Json Place Holder';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(context),
      body: Center(
        child: isLoading ? const LinearProgressIndicator() : buildListview(),
      ),
    );
  }

  ListView buildListview() {
    return ListView.builder(
      itemCount: postItems?.length ?? 0,
      itemBuilder: (context, index) => PostCard(model: postItems?[index]),
    );
  }

  AppBar buildAppbar(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .headlineLarge!
            .copyWith(color: Theme.of(context).colorScheme.primary),
      ),
    );
  }
}
