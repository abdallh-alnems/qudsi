import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../../../logic/controller/ad/banner_company_products_controller.dart';


class AdBannerCompanyProducts extends StatelessWidget {
  const AdBannerCompanyProducts({
    
    super.key,  
  });

  @override
  Widget build(BuildContext context) {
    final adController = Get.find<AdBannerCompanyProductsController>();
    return GetBuilder<AdBannerCompanyProductsController>(builder: (_) {
      return adController.isLoadedBannerAd
          ? SizedBox(
              height: adController.bannerAd!.size.height.toDouble(),
              width: adController.bannerAd!.size.width.toDouble(),
              child: AdWidget(ad: adController.bannerAd!),
            )
          : const SizedBox();
    });
  }
}