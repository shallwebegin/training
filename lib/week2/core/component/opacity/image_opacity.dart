import 'package:flutter/material.dart';
import 'package:training/week2/core/enums/duration_enums.dart';
import 'package:training/week2/core/image_manager.dart';

class ImageOpacity extends StatefulWidget {
  const ImageOpacity({super.key, required this.url});
  final String url;

  @override
  State<ImageOpacity> createState() => _ImageOpacityState();
}

class _ImageOpacityState extends State<ImageOpacity> {
  bool _isOpacity = true;
  @override
  void initState() {
    super.initState();
    waitForTime();
  }

  Future<void> waitForTime() async {
    await Future.delayed(DurationEnums.medium.time);
    setState(() {
      _isOpacity = !_isOpacity;
    });
  }

  double get opacityValue => _isOpacity ? 0 : 1;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
        opacity: opacityValue,
        duration: DurationEnums.high.time,
        child: Image.network(widget.url));
  }
}
