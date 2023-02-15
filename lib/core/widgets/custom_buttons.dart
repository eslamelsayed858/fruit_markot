import 'package:flutter/material.dart';
import 'package:fruit_markot/core/cunstants.dart';
import 'package:fruit_markot/core/utils/size_config.dart';
import 'package:fruit_markot/core/widgets/space_widget.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class CustomGeneralButton extends StatelessWidget {
  const CustomGeneralButton({super.key, this.text, this.onTap});
  final String? text;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: KMainColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text!,
            style: TextStyle(
                fontSize: 14,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w500),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}

class CustomButtonWithIcon extends StatelessWidget {
  const CustomButtonWithIcon(
      {super.key, this.text, this.iconData, this.onTap, this.color});
  final String? text;
  final IconData? iconData;
  final VoidCallback? onTap;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Color(0xff707070),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: color,
            ),
            HorizintalSpace(2),
            Text(
              text!,
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.left,
            )
          ],
        ),
      ),
    );
  }
}
