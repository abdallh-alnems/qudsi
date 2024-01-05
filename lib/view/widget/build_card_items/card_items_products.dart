import 'package:flutter/material.dart';

import '../../../constant/link_api.dart';
import '../../../constant/theme/app_colors.dart';
import '../custom_text.dart';


Widget buildCardItemsProducts({
  key,
  required String nameProducts,
  required String nameCompanies,
  required String image,
}) {
  return Padding(
    padding: const EdgeInsets.all(7),
    child: Container(
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        border: Border.all(color: AppColors.secondaryColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: double.infinity,
            height: 135,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Image.network(
              "${AppLink.imageProducts}/$image",
              fit: BoxFit.fitHeight,
              
              loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                } else {
                  return Center(
                    child: CircularProgressIndicator(
                      color: AppColors.iconAndBarColor,
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded / (loadingProgress.expectedTotalBytes ?? 1)
                          : null,
                    ),
                  );
                }
              },
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 7),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  reverse: true,
                  child: CustomText(
                    result: nameProducts,
                    title: ' : المنتج',
                    fontSize: 14,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 7),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  reverse: true,
                  child: CustomText(result: nameCompanies, title: ' : الشركة'),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
