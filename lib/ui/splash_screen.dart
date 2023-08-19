import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:opticash/app/app_colors.dart';
import 'package:opticash/gen/assets.gen.dart';
import 'package:opticash/ui/ui.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    Future.delayed(const Duration(seconds: 2), () {
      context.router.replace(const WelcomeRoute());
    });
    return Scaffold(
      backgroundColor: AppColors.black09,
      body: Stack(
        children: [
          FadeAnimation(
            delay: 0.5,
            child: Align(
              alignment: Alignment.topCenter,
              child: AppAssets.images.splash3dBackground.image(
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          FadeAnimation(
            delay: 0.6,
            child: Align(
              child: AppAssets.images.opticashIcon.image(
                width: 109,
                height: 128,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
