import 'dart:math';

import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  final _appBarTitle = 'Instagram';
  final _imageUrl = 'https://picsum.photos/200/300';
  MaterialColor get randomColor => Colors.primaries[Random().nextInt(17)];
  const WelcomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Column(
        children: [
          Expanded(flex: 3, child: buildListviewTop(context)),
          Expanded(flex: 4, child: buildListView()),
          Expanded(flex: 3, child: buildDismissibleBottomCard())
        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: false,
      title: buildRowAppbarTitle(),
      actions: [buildIconButtonAppbar(context)],
    );
  }

  IconButton buildIconButtonAppbar(BuildContext context) {
    return IconButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return const Column(
                children: [Text('Haci')],
              );
            },
          );
        },
        icon: const Icon(Icons.logo_dev));
  }

  Row buildRowAppbarTitle() {
    return Row(
        children: [const Icon(Icons.stacked_bar_chart), buildTextAppbar()]);
  }

  Text buildTextAppbar() => Text(_appBarTitle);

  ListView buildListviewTop(BuildContext context) {
    return ListView(
      children: [
        Container(
            width: 500,
            height: MediaQuery.of(context).size.height * 0.1,
            color: randomColor),
        Container(
            width: 500,
            height: MediaQuery.of(context).size.height * 0.1,
            color: randomColor),
        Container(
            height: MediaQuery.of(context).size.height * 0.1,
            width: 500,
            color: randomColor),
        Container(
            height: MediaQuery.of(context).size.height * 0.1,
            width: 500,
            color: randomColor),
      ],
    );
  }

  ListView buildListView() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 100,
      itemBuilder: (context, index) {
        return buildListviewCard(context);
      },
    );
  }

  SizedBox buildListviewCard(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Card(
        child: ListTile(
          onTap: () {},
          leading: CircleAvatar(
            backgroundImage: NetworkImage(_imageUrl),
            radius: 40,
          ),
          title: const Text('ABaba'),
        ),
      ),
    );
  }

  Dismissible buildDismissibleBottomCard() {
    return Dismissible(
      background: Container(
        color: Colors.red,
      ),
      secondaryBackground: Container(
        color: Colors.red,
      ),
      key: UniqueKey(),
      child: buildContainerBottom(),
    );
  }

  Container buildContainerBottom() {
    return Container(
      color: Colors.blue,
    );
  }
}
