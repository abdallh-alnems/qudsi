import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../../../logic/controller/ad/ad_banner_all_controller.dart';

class AdBannerAll extends StatelessWidget {
  const AdBannerAll({
    
    super.key,  
  });

  @override
  Widget build(BuildContext context) {
    final adController = Get.find<AdBannerAllController>();
    return GetBuilder<AdBannerAllController>(builder: (_) {
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