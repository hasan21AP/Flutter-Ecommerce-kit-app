import 'package:ecorommece_app_kit/core/constants/colors.dart';
import 'package:flutter/material.dart';

customCircularProgressIndicator(BuildContext context){
  showDialog(context: context, 
        builder:
          (context) => const Center(child: 
          CircularProgressIndicator(
            color: AppColors.kMainColor 
      )
    ) 
  );
}