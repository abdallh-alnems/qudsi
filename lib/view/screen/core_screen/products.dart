import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qudsi/constant/theme/app_colors.dart';

import '../../../constant/routes/routes.dart';
import '../../../functions/builder/products_builder.dart';
import '../../../functions/message/alert_exit_app.dart';
import '../../../logic/controller/core_controller.dart/products_controller.dart';
import '../../../logic/controller/message_once.dart';
import '../../widget/ad/ad_banner_products.dart';
import '../../widget/button_companies.dart';
import '../../widget/drawer/drawer_button/open_drawer.dart';
import '../../widget/drawer/my_drawer.dart';
import '../../widget/search/search_button.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductsController productsController =
        Get.find<ProductsController>();

    final MessageOnceController messageOnce = Get.find<MessageOnceController>();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      messageOnce.showExitDialogOnce();
    });

    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        alertExitApp();
      },
      child: Scaffold(
        drawer: Drawer(
          backgroundColor: AppColors.backGroundColor,
          width: MediaQuery.of(context).size.width * 0.7,
          child: const MyDrawer(),
        ),
        body: SafeArea(
          child: Stack(
            children: [
              ProductsBuilder(
                future: productsController.viewProducts(),
              ),
              const OpenDrawerButton(),
              const ButtonCompanies(),
              SearchButton(
                onTap: () {
                  Get.toNamed(AppRoutes.searchProducts);
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: const AdBannerProducts(),
      ),
    );
  }
} 
