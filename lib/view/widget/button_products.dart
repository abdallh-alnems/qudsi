import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qudsi/constant/theme/app_colors.dart';

import '../../constant/routes/routes.dart';

class ButtonProducts extends StatelessWidget {
  const ButtonProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.only(top: 18, right: 17),
        child: GestureDetector(
          onTap: () {
            Get.toNamed(AppRoutes.products);
          },
          child: const Icon(
            Icons.local_offer,
            size: 25,
            color: AppColors.iconAndBarColor,
          ),
        ),
      ),
    );
  }
}
