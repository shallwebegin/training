import 'package:flutter/material.dart';
import 'package:training/week1/welcome/welcome_view.dart';
import 'package:training/week2/post_json_place_holder/post_json_place_holder.dart';
import 'package:training/week2/stateful/home_stateful_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: PostJsonPlaceHolder(),
    );
  }
}
