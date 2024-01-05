import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../functions/builder/products_builder.dart';
import '../../../logic/controller/core_controller.dart/company_products_controller.dart';
import '../../widget/ad/ad_banner_company_products.dart';
import '../../widget/arrow_back.dart';

class CompanyProducts extends StatelessWidget {
  const CompanyProducts({super.key});

  @override
  Widget build(BuildContext context) {
    final CompanyProductsController companyProductsController =
        Get.find<CompanyProductsController>();

     final int companyId = Get.arguments;
       

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ProductsBuilder(
              future: companyProductsController.viewCompanyProducts(companyId),
            ),
            
             const ArrowBack(),
          ],
        ),
      ),
      bottomNavigationBar: const AdBannerCompanyProducts(),
    );
  }
}
