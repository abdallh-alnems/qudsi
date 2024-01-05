import 'package:flutter/material.dart';

class DrawerBarLogo extends StatelessWidget {
  const DrawerBarLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 8),
      child: SizedBox(
          height: 35,
          width: 90,
          child: Image.asset(
            'assets/images/drawer_logo_bar.jpg',
            fit: BoxFit.fill,
          )),
    );
  }
}
