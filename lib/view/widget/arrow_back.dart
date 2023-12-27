import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qudsi/constant/theme/app_colors.dart';

class ArrowBack extends StatelessWidget {
  const ArrowBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.only(top: 17, left: 21),
        child: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.iconAndBarColor,
          ),
        ),
      ),
    );
  }
}
