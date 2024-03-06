import 'package:flutter/material.dart';
import 'package:training/week2/core/component/card/user_card.dart';
import 'package:training/week2/core/component/opacity/image_opacity.dart';
import 'package:training/week2/core/enum/duration_enum.dart';
import 'package:training/week2/core/image_manager.dart';
import 'package:training/week2/stateful/model/user.dart';
import 'package:training/week2/stateless/home_detail_stateless.dart';

class HomeViewStateful extends StatefulWidget {
  const HomeViewStateful({super.key});

  @override
  State<HomeViewStateful> createState() => _HomeViewStatefulState();
}

class _HomeViewStatefulState extends State<HomeViewStateful> {
  bool _isLoading = true;
  late final ImageManager imageManager;
  late final User user;
  @override
  void initState() {
    super.initState();
    _waitForLoading();
    imageManager = ImageManager();
    user = User.fakeItem();
  }

  Future<void> _waitForLoading() async {
    await Future.delayed(DurationEnum.NORMAL.time);
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  @override
  void dispose() {
    super.dispose();
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
              navigateDetail();
            },
          )
        ],
      ),
    );
  }

  void navigateDetail() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => HomeDetail(model: user),
      ),
    );
  }
}
