import 'package:flutter/material.dart';

import '../../../../constant/theme/app_colors.dart';

class OpenDrawerButton extends StatelessWidget {
  const OpenDrawerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 14),
      child: Align(
        alignment: Alignment.topLeft,
        child: GestureDetector(
          onTap: (){
             Scaffold.of(context).openDrawer();
          },
          child: Container(
              alignment: Alignment.center,
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                  border: Border.all(
                color: AppColors.secondaryColor,
              )),
              child: const Icon(
                Icons.menu_open,
                color: AppColors.iconAndBarColor,
              )),
        ),
      ),
    );
  }
}
