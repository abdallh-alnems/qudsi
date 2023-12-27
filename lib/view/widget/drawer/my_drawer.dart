import 'package:flutter/material.dart';
import 'package:qudsi/view/widget/drawer/drawer_bar_logo.dart';

import '../../../constant/theme/app_colors.dart';
import 'drawer_button/close_drawer.dart';
import 'drawer_core/drawer_items.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.backGroundColor,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: const <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             DrawerBarLogo(),
              CloseDrawerButton(),
            ],
          ),
          DrawerCategories(),
        ],
      ),
    );
  }
}
