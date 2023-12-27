import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../../../logic/controller/ad/banner_search_controller.dart';


class AdBannerSearch extends StatelessWidget {
  const AdBannerSearch({
    
    super.key,  
  });

  @override
  Widget build(BuildContext context) {
    final adController = Get.find<AdBannerSearchController>();
    return GetBuilder<AdBannerSearchController>(builder: (_) {
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