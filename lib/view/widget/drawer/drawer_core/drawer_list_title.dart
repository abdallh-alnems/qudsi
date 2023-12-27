import 'package:flutter/material.dart';

import '../../../../constant/theme/app_colors.dart';

class DrawerListTitle extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final Function() onTap;
  final double? fontSize;
  const DrawerListTitle({
    super.key,
    required this.title,
    required this.icon,
    this.fontSize = 14,
    this.color = AppColors.iconAndBarColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(
        title,
        style: TextStyle(fontSize: fontSize, color: AppColors.secondaryColor),
        textDirection: TextDirection.rtl,
      ),
      leading: Icon(
        icon,
        size: 20,
        color: color,
      ),
    );
  }
}
