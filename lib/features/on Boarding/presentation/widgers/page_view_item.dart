import 'package:flutter/material.dart';
import 'package:fruit_markot/core/utils/size_config.dart';
import 'package:fruit_markot/core/widgets/space_widget.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, this.title, this.subTitle, this.image});

  final String? title;
  final String? subTitle;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VerticalSpace(20),
        SizedBox(
          height: SizeConfig.defaultSize! * 22,
          child: Image.asset(image!),
        ),
        VerticalSpace(3),
        Text(
          title!,
          style: TextStyle(
            fontFamily: 'Poppint',
            fontSize: 20,
            color: const Color(0xff2f2e41),
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.left,
        ),
        VerticalSpace(1),
        Text(
          subTitle!,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppint',
            fontSize: 15,
            color: const Color(0xff78787c),
          ),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
