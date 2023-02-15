import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'features/splash/presentation/splash_view.dart';

void main() {
  runApp(FruitsMarke());
}

class FruitsMarke extends StatelessWidget {
  const FruitsMarke({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
