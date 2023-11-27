import 'package:ecorommece_app_kit/core/constants/colors.dart';
import 'package:ecorommece_app_kit/view/widgets/auth/sign_in_body.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: const SignInBody()
      );
  }
}