import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../../../core/cunstants.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({super.key, @required this.dotIdex});
  final double? dotIdex;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      decorator: DotsDecorator(
        color: Colors.transparent,
        activeColor: KMainColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(color: KMainColor),
        ),
      ),
      dotsCount: 3,
      position: dotIdex!,
    );
  }
}
