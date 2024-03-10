import 'package:flutter/material.dart';
import 'package:training/week2/core/component/card/user_card.dart';
import 'package:training/week2/core/component/opacity/image_opacity.dart';
import 'package:training/week2/core/enums/duration_enums.dart';
import 'package:training/week2/core/image_manager.dart';
import 'package:training/week2/stateful/model/user.dart';
import 'package:training/week2/stateless/home_detail.dart';

class HomeViewStatefull extends StatefulWidget {
  const HomeViewStatefull({super.key});

  @override
  State<HomeViewStatefull> createState() => _HomeViewStatefullState();
}

class _HomeViewStatefullState extends State<HomeViewStatefull> {
  bool _isLoading = true;
  late final ImageManager imageManager;
  late final User user;

  @override
  void initState() {
    super.initState();
    waitForLoading();
    imageManager = ImageManager();
    user = User.fakeItems();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> waitForLoading() async {
    await Future.delayed(DurationEnums.low.time);
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          _isLoading ? const CircularProgressIndicator() : const FlutterLogo(),
          ImageOpacity(url: imageManager.randomImage),
          UserCard(
            user: user,
            onPressed: () {
              navigateToDetail();
            },
          )
        ],
      ),
    );
  }

  void navigateToDetail() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => HomeDetailScreen(user: user),
      ),
    );
  }
}
