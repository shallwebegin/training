import 'package:flutter/material.dart';
import 'package:training/week2/core/enum/duration_enum.dart';
import 'package:training/week2/core/image_manager.dart';

class ImageOpacity extends StatefulWidget {
  final String url;
  const ImageOpacity({super.key, required this.url});

  @override
  State<ImageOpacity> createState() => _ImageOpacityState();
}

class _ImageOpacityState extends State<ImageOpacity> {
  bool _isOpacity = false;
  @override
  void initState() {
    super.initState();
  }

  Future<void> waitForTime() async {
    await Future.delayed(DurationEnum.NORMAL.time);
    setState(() {
      _isOpacity = !_isOpacity;
    });
  }

  double get opacityValue => _isOpacity ? 0 : 1;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: opacityValue,
      duration: DurationEnum.HIGH.time,
      child: Image.network(widget.url),
    );
  }
}
