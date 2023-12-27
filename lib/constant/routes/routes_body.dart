import 'package:flutter/material.dart';
import 'package:qudsi/constant/routes/routes.dart';
import 'package:qudsi/view/screen/core_screen/products.dart';
import '../../view/screen/categories/another.dart';
import '../../view/screen/categories/cafes.dart';
import '../../view/screen/categories/digital_platforms.dart';
import '../../view/screen/categories/entertaining.dart';
import '../../view/screen/categories/food_stuffs.dart';
import '../../view/screen/categories/home_care.dart';
import '../../view/screen/categories/machinery_consumables.dart';
import '../../view/screen/categories/machines.dart';
import '../../view/screen/categories/personal_care.dart';
import '../../view/screen/categories/restaurant.dart';
import '../../view/screen/categories/store.dart';
import '../../view/screen/categories/technology.dart';
import '../../view/screen/categories/transport.dart';
import '../../view/screen/core_screen/companies.dart';
import '../../view/screen/core_screen/company_products.dart';
import '../../view/screen/search/search_companies.dart';
import '../../view/screen/search/search_products.dart';

Map<String, Widget Function(BuildContext)> routes = {

//==================================products and company========================

  AppRoutes.companies: (context) => const Companies(),

  AppRoutes.products: (context) => const Products(),

  AppRoutes.companyProducts: (context) => const CompanyProducts(),

//==================================categories==================================

  AppRoutes.another: (context) => const Another(),

  AppRoutes.cafes: (context) => const Cafes(),

  AppRoutes.digitalPlatforms: (context) => const DigitalPlatforms(),

  AppRoutes.entertaining: (context) => const Entertaining(),

  AppRoutes.foodStuffs: (context) => const FoodStuffs(),

  AppRoutes.homeCare: (context) => const HomeCare(),

  AppRoutes.machineryConsumables: (context) => const MachineryConsumables(),

  AppRoutes.machines: (context) => const Machines(),

  AppRoutes.medical: (context) => const Machines(),

  AppRoutes.personalCare: (context) => const PersonalCare(),

  AppRoutes.restaurant: (context) => const Restaurant(),

  AppRoutes.store: (context) => const Store(),

  AppRoutes.technology: (context) => const Technology(),

  AppRoutes.transport: (context) => const Transport(),

//==================================search======================================

  AppRoutes.searchProducts: (context) => const SearchProducts(),

  AppRoutes.searchCompanies: (context) => const SearchCompanies(),


  


  
};
