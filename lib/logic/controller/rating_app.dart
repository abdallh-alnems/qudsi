import 'package:get/get.dart';
import 'package:rate_my_app/rate_my_app.dart';

class RateMyAppController extends GetxController {
  final RateMyApp rateMyApp = RateMyApp(
    minDays: 3,
    remindDays: 7,
    minLaunches: 7,
    remindLaunches: 10,
    appStoreIdentifier: '',
    googlePlayIdentifier: 'com.NiMs.qudsi',
  );

  @override
  void onInit() {
    super.onInit();
    rateMyApp.init().then((_) {
      // ignore: avoid_function_literals_in_foreach_calls
      rateMyApp.conditions.forEach((condition) {
        if (condition is DebuggableCondition) {}
      });

      if (rateMyApp.shouldOpenDialog) {
        rateMyApp.showRateDialog(
          Get.context!,
          title: 'من فضلك قيمنا',
          message:
              'أهلاً! نرغب في سماع رأيك حول تطبيقنا. هل يمكنك قضاء بعض الوقت لتقييم التطبيق؟ تعليقاتك مهمة جدًا بالنسبة لنا لتحسين تجربتك وتلبية احتياجاتك',
          rateButton: 'تقيييم',
          noButton: 'لا شكرًا ',
          laterButton: 'لاحقا',
          onDismissed: () =>
              rateMyApp.callEvent(RateMyAppEventType.laterButtonPressed),
        );
      }
    });
  }
}
