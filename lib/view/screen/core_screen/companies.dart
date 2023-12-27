import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constant/routes/routes.dart';
import '../../../functions/builder/companies_builder.dart';
import '../../../logic/controller/core_controller.dart/companies_controller.dart';
import '../../widget/ad/ad_banner_all.dart';
import '../../widget/arrow_back.dart';
import '../../widget/button_products.dart';
import '../../widget/search/search_button.dart';

class Companies extends StatelessWidget {
  const Companies({super.key});

  @override
  Widget build(BuildContext context) {
         final CompaniesController companiesController = Get.find<CompaniesController>();

       

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            CompaniesBuilder(future: companiesController.viewCompanies(),),
            SearchButton(
                onTap: () {
                  Get.toNamed(AppRoutes.searchCompanies);
                },
              ),
            const ArrowBack(),
            const ButtonProducts(),
          ],
        ),
      ),
         bottomNavigationBar: const AdBannerAll(),     
    
    );
  }
}
