import 'package:flutter/material.dart';
import 'package:fruit_markot/core/utils/size_config.dart';

class HorizintalSpace extends StatelessWidget {
  const HorizintalSpace(this.value);
  final double value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.defaultSize! * value,
    );
  }
}

class VerticalSpace extends StatelessWidget {
  const VerticalSpace(this.value);
  final double value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defaultSize! * value,
    );
  }
}
