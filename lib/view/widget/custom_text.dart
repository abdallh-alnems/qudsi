import 'package:flutter/material.dart';
import '../../constant/theme/app_colors.dart';

class CustomText extends StatelessWidget {
  final String title;
  final String result;
  final double fontSize;

  const CustomText(
      {super.key,
      required this.title,
      required this.result,
      this.fontSize = 12.0});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          result,
          style: TextStyle(color: AppColors.backGroundColor, fontSize: fontSize),
        ),
        Text(
          title,
          style: TextStyle(color: AppColors.backGroundColor, fontSize: fontSize),
        ),
      ],
    );
  }
}
