import 'package:flutter/material.dart';
import 'package:fruit_markot/core/cunstants.dart';
import 'package:fruit_markot/core/utils/size_config.dart';
import 'package:fruit_markot/core/widgets/custom_buttons.dart';
import 'package:fruit_markot/core/widgets/space_widget.dart';
import 'package:get/get.dart';

import '../../complete_information/complete_information_view.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VerticalSpace(10),
        SizedBox(
          child: Image.asset(KLogo),
          height: SizeConfig.defaultSize! * 17,
        ),
        Padding(
          padding: const EdgeInsets.all(9.0),
          child: Text(
            'Fruit Market',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 51,
              color: Color(0xff69a03a),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Expanded(child: SizedBox()),
        Row(
          children: [
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: CustomButtonWithIcon(
                  onTap: () {
                    Get.to(() => CompleteInformationView(),
                        duration: Duration(milliseconds: 500),
                        transition: Transition.rightToLeft);
                  },
                  color: Color(0xff4297B2),
                  iconData: Icons.g_mobiledata,
                  text: 'Log in with',
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: CustomButtonWithIcon(
                  onTap: () {
                    Get.to(() => CompleteInformationView(),
                        duration: Duration(milliseconds: 500),
                        transition: Transition.rightToLeft);
                  },
                  color: Color(0xff4297B2),
                  iconData: Icons.facebook,
                  text: 'Log in with',
                ),
              ),
            ),
          ],
        ),
        Expanded(child: SizedBox()),
      ],
    );
  }
}
