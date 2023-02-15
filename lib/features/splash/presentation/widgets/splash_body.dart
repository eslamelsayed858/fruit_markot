import 'package:flutter/material.dart';
import 'package:fruit_markot/core/utils/size_config.dart';

import 'package:get/get.dart';

import '../../../on Boarding/presentation/on_boaidin_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));
    fadingAnimation =
        Tween<double>(begin: .2, end: 1).animate(animationController!);

    animationController?.repeat(reverse: true);

    goToNextView();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Column(
        children: [
          Spacer(),
          FadeTransition(
            opacity: fadingAnimation!,
            child: Text(
              'Fruit Market',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 51,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          Image.asset('assets/images/Group 2804.png')
        ],
      ),
    );
  }

  void goToNextView() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => const OnBoardingViow(), transition: Transition.rightToLeft);
    });
  }
}
