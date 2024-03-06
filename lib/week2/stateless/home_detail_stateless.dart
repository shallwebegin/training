import 'package:flutter/material.dart';
import 'package:training/week2/core/scroll/scroll_bar_single.dart';
import 'package:training/week2/stateful/model/user.dart';

class HomeDetail extends StatelessWidget {
  final User model;
  const HomeDetail({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(model.title),
      ),
      body: ScrollBarSingle(child: Text(model.storyText)),
    );
  }
}
