import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qudsi/constant/theme/app_colors.dart';

Future<bool> alertExitApp() async {
  Get.defaultDialog(
    
    backgroundColor: AppColors.backGroundColor,
    titleStyle: const TextStyle(color: AppColors.secondaryColor,fontSize: 18 ),
    middleTextStyle: const TextStyle(color: AppColors.secondaryColor, ),
    title: 'تنبية',
    middleText: 'هل تريد الخروج من التطبيق',
    actions: [
      ElevatedButton(
          style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0), 
          ),
        ),
        onPressed: () {
          exit(0);
        },
        child: const Text('نعم',style: TextStyle(color: AppColors.backGroundColor,),),
      ),
      ElevatedButton(
       style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0), 
          ),
        ),
        onPressed: () {
          Get.back();
        },
        child: const Text('لا',style: TextStyle(color: AppColors.backGroundColor,),),
      ),
    ],
  );
  return Future.value(true);
}
