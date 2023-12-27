import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../functions/builder/products_builder.dart';
import '../../../logic/controller/core_controller.dart/categories_controller.dart';
import '../../widget/ad/ad_banner_all.dart';
import '../../widget/arrow_back.dart';
import '../../widget/button_companies.dart';

class Cafes extends StatelessWidget {
  const Cafes({super.key});

  @override
  Widget build(BuildContext context) {
    final CategoriesController productsController =
        Get.find<CategoriesController>();

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ProductsBuilder(
              future: productsController.viewCategories('3'),
            ),
            const ArrowBack(),
            const ButtonCompanies(),
          ],
        ),
      ),
      bottomNavigationBar: const AdBannerAll(),
    );
  }
}