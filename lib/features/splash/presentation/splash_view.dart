import 'package:flutter/material.dart';
import 'package:fruit_markot/core/cunstants.dart';
import 'package:fruit_markot/features/splash/presentation/widgets/splash_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KMainColor,
      body: SplashViewBody(),
    );
  }
}
