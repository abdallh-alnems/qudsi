import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:launch_review/launch_review.dart';
import 'package:qudsi/view/widget/drawer/drawer_core/drawer_list_title.dart';
import '../../../../constant/routes/routes.dart';
import '../../../../constant/theme/app_colors.dart';

class DrawerCategories extends StatelessWidget {
  const DrawerCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
    
      children: [
       
        const Divider(
          color: AppColors.dividerAndHintTextColor,
        ),
        DrawerListTitle(
          title: 'المنتجات',
          fontSize: 18,
          icon: Icons.local_offer,
          onTap: () {
            Get.toNamed(AppRoutes.products);
          },
        ),
        DrawerListTitle(
          title: 'الشركات',
                    fontSize: 18,

          icon: Icons.business,
          onTap: () {
            Get.toNamed(AppRoutes.companies);
          },
        ),
        const Divider(
          color: AppColors.dividerAndHintTextColor,
        ),
        DrawerListTitle(
          title: 'مواد غذائية',
          icon: Icons.local_dining,
          onTap: () {
            Get.toNamed(AppRoutes.foodStuffs);
          },
        ),
        DrawerListTitle(
          title: 'مطعم',
          icon: Icons.fastfood,
          onTap: () {
            Get.toNamed(AppRoutes.restaurant);
          },
        ),
        DrawerListTitle(
          title: 'مقاهي',
          icon: Icons.local_cafe,
          onTap: () {
            Get.toNamed(AppRoutes.cafes);
          },
        ),
        DrawerListTitle(
          title: 'متجر',
          icon: Icons.shopping_cart,
          onTap: () {
            Get.toNamed(AppRoutes.store);
          },
        ),
        DrawerListTitle(
          title: 'العناية الشخصية',
          icon: Icons.hot_tub,
          onTap: () {
            Get.toNamed(AppRoutes.personalCare);
          },
        ),
        DrawerListTitle(
          title: 'العناية المنزلية',
          icon: Icons.kitchen,
          onTap: () {
            Get.toNamed(AppRoutes.homeCare);
          },
        ),
        DrawerListTitle(
          title: 'المنصات الرقمية',
          icon: Icons.tablet,
          onTap: () {
            Get.toNamed(AppRoutes.digitalPlatforms);
          },
        ),
        DrawerListTitle(
          title: 'تكنولوجيا',
          icon: Icons.settings_input_component,
          onTap: () {
            Get.toNamed(AppRoutes.technology);
          },
        ),
        DrawerListTitle(
          title: 'النقل',
          icon: Icons.directions_car,
          onTap: () {
            Get.toNamed(AppRoutes.transport);
          },
        ),
        DrawerListTitle(
          title: 'مستهلكات الالات',
          icon: Icons.build,
          onTap: () {
            Get.toNamed(AppRoutes.machineryConsumables);
          },
        ),
        DrawerListTitle(
          title: 'الالات',
          icon: Icons.gavel,
          onTap: () {
            Get.toNamed(AppRoutes.machines);
          },
        ),
        DrawerListTitle(
          title: 'طبي',
          icon: Icons.add_circle,
          onTap: () {
            Get.toNamed(AppRoutes.medical);
          },
        ),
        DrawerListTitle(
          title: 'ترفيهي',
          icon: Icons.theaters,
          onTap: () {
            Get.toNamed(AppRoutes.entertaining);
          },
        ),
        DrawerListTitle(
          title: 'اخري',
          icon: Icons.more_horiz,
          onTap: () {
            Get.toNamed(AppRoutes.another);
          },
        ),
        const Divider(
          color: AppColors.dividerAndHintTextColor,
        ),
        DrawerListTitle(
          title: 'قيمنا',
          icon: Icons.star,
          onTap: () {
              LaunchReview.launch();
          },
          color: Colors.yellow,
        ),
        DrawerListTitle(
          title: 'من نحن',
          icon: Icons.group,
          color: Colors.white,
          onTap: () {
            Get.snackbar(
              '',
              '',
              titleText: const Text(
                '',
                style: TextStyle(fontSize: 0),
                textAlign: TextAlign.center,
              ),
              messageText: const Text(
                'قريبا',
                style: TextStyle(fontSize: 23),
                textAlign: TextAlign.center,
              ),
            );
          },
        ),
      ],
    );
  }
}
