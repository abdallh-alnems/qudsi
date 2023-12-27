import 'package:get/get.dart';
import '../controller/ad/ad_banner_all_controller.dart';
import '../controller/ad/ad_banner_products_controller.dart';
import '../controller/ad/banner_company_products_controller.dart';
import '../controller/ad/banner_search_controller.dart';
import '../controller/core_controller.dart/categories_controller.dart';
import '../controller/core_controller.dart/companies_controller.dart';
import '../controller/core_controller.dart/company_products_controller.dart';
import '../controller/core_controller.dart/products_controller.dart';
import '../controller/message_once.dart';
import '../controller/rating_app.dart';
import '../controller/search/search_companies_controller.dart';
import '../controller/search/search_products_controller.dart';

class MyBindings extends Bindings {
  @override
  void dependencies() {
    
//==================================companies and products======================

    Get.put(
      ProductsController(),
    );

     Get.put(
      CompaniesController(),
    );

     Get.put(
      CompanyProductsController(),
    );

//==================================categories==================================

     Get.put(
      CategoriesController(),
    );

//==================================search======================================

    Get.put(
      SearchProductsController(),
    );

     Get.put(
      SearchCompaniesController(),
    );

//==================================message once================================

     Get.put(
      MessageOnceController(),
    );

//==================================rate my app=================================


      Get.put(
      RateMyAppController(),
    );
    
//==================================adMob=======================================


     Get.put(
      AdBannerProductsController(),
    );

    Get.put(
      AdBannerAllController(),
    );
      Get.put(
      AdBannerSearchController(),
    );
      Get.put(
      AdBannerCompanyProductsController(),
    );
    
  }
}
