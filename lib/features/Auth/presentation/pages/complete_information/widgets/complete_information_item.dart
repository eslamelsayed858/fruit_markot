import 'package:flutter/material.dart';
import 'package:fruit_markot/core/widgets/custom_text_fild.dart';
import 'package:fruit_markot/core/widgets/space_widget.dart';

class CompleteInforItem extends StatelessWidget {
  const CompleteInforItem(
      {super.key, required this.text, this.inputType, this.maxLines});
  final String text;
  final TextInputType? inputType;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16,
            color: Color(0xff0c0b0b),
            fontWeight: FontWeight.w600,
            height: 1.05625,
          ),
          textHeightBehavior:
              TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: TextAlign.center,
        ),
        VerticalSpace(2),
        CustomTextFormField(
          maxLines: maxLines,
          inputType: inputType,
        ),
      ],
    );
  }
}
