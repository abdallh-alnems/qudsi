import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:qudsi/constant/theme/app_colors.dart';
import 'package:upgrader/upgrader.dart';
import 'constant/routes/routes_body.dart';
import 'logic/bindings/my_binding.dart';
import 'view/widget/upgrade.dart';
//my
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await MobileAds.instance.initialize();

  await Upgrader.clearSavedSettings();

  await GetStorage.init();

  await dotenv.load(fileName: ".env");

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: AppColors.iconAndBarColor,
    statusBarBrightness: Brightness.light,
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: AppColors.backGroundColor),
      debugShowCheckedModeBanner: false,
      initialBinding: MyBindings(),
      home: const Upgrade(),
      routes: routes,
    );
  }
}
