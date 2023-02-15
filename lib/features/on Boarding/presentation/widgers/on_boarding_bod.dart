import 'package:flutter/material.dart';

import 'package:fruit_markot/core/utils/size_config.dart';
import 'package:fruit_markot/core/widgets/custom_buttons.dart';
import 'package:fruit_markot/features/on%20Boarding/presentation/widgers/custom_page_view.dart';
import 'package:get/get.dart';

import '../../../Auth/presentation/pages/login/login_view.dart';
import 'custom_indicator.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  PageController? pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(
          pageController: pageController,
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: SizeConfig.defaultSize! * 24,
          child: CustomIndicator(
            dotIdex: pageController!.hasClients ? pageController?.page : 0,
          ),
        ),
        Visibility(
          visible: pageController!.hasClients
              ? (pageController?.page == 2 ? false : true)
              : true,
          child: Positioned(
            top: SizeConfig.defaultSize! * 10,
            right: 32,
            child: Text(
              'Skip',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
                fontSize: 14,
                color: Color(0xff898989),
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        Positioned(
          right: SizeConfig.defaultSize! * 10,
          left: SizeConfig.defaultSize! * 10,
          bottom: SizeConfig.defaultSize! * 10,
          child: CustomGeneralButton(
            onTap: () {
              if (pageController!.page! < 2) {
                pageController?.nextPage(
                    duration: Duration(microseconds: 500),
                    curve: Curves.easeIn);
              } else {
                Get.to(() => LoginView(),
                    transition: Transition.rightToLeft,
                    duration: Duration(milliseconds: 500));
              }
            },
            text: pageController!.hasClients
                ? (pageController?.page == 2 ? 'Get started' : 'Next')
                : 'Next',
          ),
        ),
      ],
    );
  }
}
