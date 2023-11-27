import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:ecorommece_app_kit/core/constants/colors.dart';
import 'package:ecorommece_app_kit/core/constants/images_assets.dart';
import 'package:ecorommece_app_kit/view/screens/auth/sign_in_view.dart';
import 'package:flutter/material.dart';


class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  AnimatedSplashScreen.withScreenFunction(
      splash: Image.asset(ImagesAssets.logoImage), 
      backgroundColor: AppColors.kMainColor,
      screenFunction: () async{
        return const SignInView();
      },
      curve: Curves.easeInOut,
      splashTransition: SplashTransition.rotationTransition,
      duration: 3000,
      );
        }
  }
