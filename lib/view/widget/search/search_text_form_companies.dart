import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constant/theme/app_colors.dart';
import '../../../logic/controller/search/search_companies_controller.dart';
import '../build_card_items/card_items_companies.dart';

class SearchFormTextCompanies extends GetWidget<SearchCompaniesController> {
  const SearchFormTextCompanies({super.key});

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
                controller: controller.searchCompaniesController,
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
                      controller.fetchDataCompanies();
                    },
                    icon: const Icon(
                      Icons.search,
                      color: AppColors.iconAndBarColor,
                    ),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      controller.searchCompaniesController.clear();
                    },
                    icon: const Icon(
                      Icons.close,
                      color: AppColors.iconAndBarColor,
                    ),
                  ),
                  counterText: '',
                  hintText: 'ابحث عن الشركات',
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
                  controller.searchCompanies =
                      controller.searchCompaniesController.text.trim();
                  controller.fetchDataCompanies();
                },
              ),
            ),
          ),
        ),
        Obx(() {
          final searchStatus = controller.status.value;

          if (searchStatus == SearchStatus.success) {
            return Expanded(
              child:     ListView.builder(
              padding: const EdgeInsets.only(top: 45),
              physics: const BouncingScrollPhysics(),
              itemCount: controller.searchData.length,
              itemBuilder: (context, index) {

                return buildCardItemsCompanies(
                  context,
                  image: controller.searchData[index].image!,
                  nameCompanies: controller.searchData[index].company!,
                  specialty: controller.searchData[index].specialty!,
                 companyId: controller.searchData[index].companyId!,
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
