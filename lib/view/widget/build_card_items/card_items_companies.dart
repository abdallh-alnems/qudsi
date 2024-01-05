import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qudsi/constant/routes/routes.dart';
import '../../../constant/link_api.dart';
import '../../../constant/theme/app_colors.dart';
import '../custom_text.dart';

Widget buildCardItemsCompanies(
  BuildContext context, {
  required String image,
  required String nameCompanies,
  required String specialty,
  required int companyId,
  Key? key,
}) {
  return Padding(
    padding: const EdgeInsets.only(top: 20, right: 15, left: 15),
    child: InkWell(
      onTap: () {
        Get.toNamed(
          AppRoutes.companyProducts,
          arguments: companyId,
        );
      },
      child: Container(
        decoration: const BoxDecoration(
          color: AppColors.secondaryColor,
        ),
        child: Stack(
          children: [
            Container(
              color: AppColors.secondaryColor,
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.4,
              height: 90,
              child: Image.network(
                "${AppLink.imageCompanies}/$image",
                fit: BoxFit.fill,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12, right: 10),
                  child: CustomText(
                      result: nameCompanies, title: ' : الشركة', fontSize: 14),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 7, right: 10),
                  child: CustomText(result: specialty, title: ' : التخصص'),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
