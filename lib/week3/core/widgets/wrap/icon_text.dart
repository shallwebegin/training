import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  const IconText({super.key, required this.title, required this.icon});

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      children: [
        iconText(context),
        buildText(context),
      ],
    );
  }

  Icon iconText(BuildContext context) {
    return Icon(
      icon,
      color: Theme.of(context).colorScheme.primary,
    );
  }

  Text buildText(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headlineMedium!.copyWith(
          color: Theme.of(context).colorScheme.primary,
          fontWeight: FontWeight.bold),
    );
  }
}
