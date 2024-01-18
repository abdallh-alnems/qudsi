import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../constant/theme/app_colors.dart';

class MessageOnceController extends GetxController {
  final box = GetStorage();
  RxBool showMessage = true.obs;

  void showExitDialog() {
    Get.defaultDialog(
      backgroundColor: AppColors.backGroundColor,
      title: "تنبية",
      titleStyle: const TextStyle(color: AppColors.secondaryColor),
      middleText:
          "ليس الهدف من التطبيق هو الربح وانما الهدف الاول والاخير هو المساعدة",
      middleTextStyle: const TextStyle(color: AppColors.secondaryColor),
      actions: [
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(AppColors.secondaryColor),
          ),
          onPressed: () {
            Get.back();
          },
          child: const Text(
            'تفهمت ذلك',
            style: TextStyle(color: AppColors.backGroundColor),
          ),
        ),
      ],
    );

    showMessage.value = false;
    box.write('showMessage', false);
  }

  void showExitDialogOnce() {
    if (showMessage.value) {
      showExitDialog();
    }
  }

  @override
  void onInit() {
    super.onInit();
    
    showMessage.value = box.read('showMessage') ?? true;
  }
}
