import 'package:upgrader/upgrader.dart';

class UpdateMessages extends UpgraderMessages {
  /// Override the message function to provide custom language localization.
  @override
  String? message(UpgraderMessage messageKey) {
   
    switch (messageKey) {
      case UpgraderMessage.body:
        return 'نسخة جديدة متوفرة من تطبيق {{appName}}';
      case UpgraderMessage.buttonTitleIgnore:
        return 'تجاهل';
      case UpgraderMessage.buttonTitleLater:
        return 'لاحقا';
      case UpgraderMessage.buttonTitleUpdate:
        return 'تحديث الان';
      case UpgraderMessage.prompt:
        return 'هل تفضل أن يتم التحديث الآن';
      case UpgraderMessage.releaseNotes:
        return 'تفاصيل الاصدار';
      case UpgraderMessage.title:
        return 'نسخة جديدة';
      
      default:
    }
    return super.message(messageKey);
    
  }
}
