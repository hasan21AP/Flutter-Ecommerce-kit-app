import 'package:ecorommece_app_kit/core/constants/colors.dart';
import 'package:ecorommece_app_kit/view/widgets/auth/reset_password_body.dart';
import 'package:flutter/material.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: AppColors.kMainColor,
        elevation: 0.0,
      ),
      body: const ResetPasswordBody(),
    );
  }
}