import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constant/theme/app_colors.dart';
import '../../../logic/controller/search/search_products_controller.dart';
import '../build_card_items/card_items_products.dart';

class SearchFormTextProducts extends GetWidget<SearchProductsController> {
  const SearchFormTextProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 17, right: 5),
          child: Align(
            alignment: Alignment.topRight,
            child: SizedBox(
              height: 47,
              width: 265,
              child: TextField(
                controller: controller.searchProductsController,
                textAlign: TextAlign.right,
                style: const TextStyle(color: Colors.white),
                textDirection: TextDirection.rtl,
                cursorColor: AppColors.iconAndBarColor,
                keyboardType: TextInputType.text,
                maxLines: 1,
                maxLength: 30,
                decoration: InputDecoration(
                  prefixIcon: IconButton(
                    onPressed: () {
                      controller.fetchDataProducts();
                    },
                    icon: const Icon(
                      Icons.search,
                      color: AppColors.iconAndBarColor,
                    ),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      controller.searchProductsController.clear();
                    },
                    icon: const Icon(
                      Icons.close,
                      color: AppColors.iconAndBarColor,
                    ),
                  ),
                  counterText: '',
                  hintText: 'ابحث عن المنتجات',
                  hintStyle: const TextStyle(
                      color: AppColors.dividerAndHintTextColor, fontSize: 15),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: AppColors.secondaryColor),
                    borderRadius: BorderRadius.circular(0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: AppColors.secondaryColor),
                    borderRadius: BorderRadius.circular(0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: AppColors.secondaryColor),
                    borderRadius: BorderRadius.circular(0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: AppColors.secondaryColor),
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                onEditingComplete: () {
                  controller.searchProducts =
                      controller.searchProductsController.text.trim();
                  controller.fetchDataProducts();
                },
              ),
            ),
          ),
        ),
        Obx(() {
          final searchStatus = controller.status.value;

          if (searchStatus == SearchStatus.success) {
            return Expanded(
              child: GridView.builder(
                itemCount: controller.searchData.length,
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  childAspectRatio: 0.8,
                  mainAxisSpacing: 9.0,
                  crossAxisSpacing: 6.0,
                  maxCrossAxisExtent: 200,
                ),
                itemBuilder: (context, index) {
                  return buildCardItemsProducts(
                    nameProducts: controller.searchData[index].product!,
                    nameCompanies: controller.searchData[index].company!,
                    image: controller.searchData[index].image!,
                  );
                },
              ),
            );
          } else if (searchStatus == SearchStatus.failure) {
            return Center(child: Image.asset('assets/images/search_error.png'));
          } else {
            return Container();
          }
        }),
      ],
    );
  }
}
