import 'package:ecorommece_app_kit/core/constants/colors.dart';
import 'package:ecorommece_app_kit/view/widgets/auth/verify_code_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyCodeView extends StatelessWidget {
  const VerifyCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: 
           InkWell(
            onTap: (){
              Get.back();
            },
            enableFeedback: false,
            child: const Icon(Icons.navigate_before)
            ),
        backgroundColor: Colors.transparent,
        foregroundColor: AppColors.kMainColor,
        elevation: 0.0,
      ),
      body: const VerifyCodeBody(),
    );
  }
}