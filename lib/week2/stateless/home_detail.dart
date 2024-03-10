import 'package:flutter/material.dart';
import 'package:training/week2/core/component/scroll/scroll_bar_single.dart';
import 'package:training/week2/stateful/model/user.dart';

class HomeDetailScreen extends StatelessWidget {
  const HomeDetailScreen({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.title),
      ),
      body: ScrollBarSingle(
        child: Text(user.storyText),
      ),
    );
  }
}
