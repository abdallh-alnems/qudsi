import 'package:flutter/material.dart';
import 'package:upgrader/upgrader.dart';
import '../../functions/message/messages.dart';
import '../screen/core_screen/products.dart';

class Upgrade extends StatelessWidget {
  const Upgrade({super.key});

  @override
  Widget build(BuildContext context) {
    return UpgradeAlert(
        upgrader: Upgrader(
         
          canDismissDialog: true,
          showLater: true,
          showIgnore: true,
          showReleaseNotes: false,
          dialogStyle: UpgradeDialogStyle.cupertino,
          messages: UpdateMessages(),
        ),
        child: const Products());
  }
}
