
import 'package:ecorommece_app_kit/core/utils/size_config.dart';
import 'package:flutter/material.dart';

class HorizanintalSpace extends StatelessWidget {
  const HorizanintalSpace({super.key,this.value});

  final double? value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
          width: SizeConfig.defaultSize! * value!
    );
  }
}


class VerticalSpace extends StatelessWidget {
  const VerticalSpace({super.key, this.value});

  final double? value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
          height: SizeConfig.defaultSize! * value!
    );
  }
}