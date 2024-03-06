import 'package:flutter/material.dart';

class ScrollBarSingle extends StatelessWidget {
  final Widget child;
  const ScrollBarSingle({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
        child: SingleChildScrollView(
      child: child,
    ));
  }
}
