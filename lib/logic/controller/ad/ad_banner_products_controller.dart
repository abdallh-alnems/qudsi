import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:qudsi/constant/ad_mob_id.dart';


class AdBannerProductsController extends GetxController {
  

  BannerAd? bannerAd;
  bool isLoadedBannerAd = false;
  
  

  @override
  void onInit() {
    super.onInit();
    initBannerAd();
      }

  @override
  void onClose() {
    super.onClose();
    bannerAd!.dispose();
  
    
  }

  initBannerAd() {
    bannerAd = BannerAd(
      size: AdSize.banner,
      adUnitId: AdId.bannerProducts,
      listener: BannerAdListener(onAdLoaded: (ad) {
        isLoadedBannerAd = true;
        update();
      }, onAdFailedToLoad: ((ad, error) {
        ad.dispose();
      })),
      request: const AdRequest(),
    );
    bannerAd!.load();
  }

}
