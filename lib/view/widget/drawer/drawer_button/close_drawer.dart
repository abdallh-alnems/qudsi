import 'package:flutter/material.dart';
import 'package:qudsi/constant/theme/app_colors.dart';

class CloseDrawerButton extends StatelessWidget {
  const CloseDrawerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      child: GestureDetector(
        onTap: () {
          Scaffold.of(context).closeDrawer();
        },
        child: const Padding(
          padding: EdgeInsets.only(top: 11, right: 9),
          child: Icon(
            Icons.close,
            color: AppColors.iconAndBarColor,
          ),
        ),
      ),
    );
  }
}
