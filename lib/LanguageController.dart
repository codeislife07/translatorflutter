import 'dart:ui';

import 'package:get/get.dart';
import 'package:translatorflutter/StorageService.dart';

class LanguageController extends GetxController{
  final storage=Get.find<StorageService>();
  final RxString local=Get.locale.toString().obs;


  final Map<String,dynamic> optionslocales={
    'en_US':{
      'languageCode':'en',
      'countryCode':'US',
      'description':'English',
    },
    'de_DE':{
      'languageCode':'de',
      'countryCode':'DE',
      'description':'German',
    },
    'pt_BR':{
      'languageCode':'pt',
      'countryCode':'BR',
      'description':'Portugues',
    },
  };

  void updateLocale(String key){
    final String languageCode=optionslocales[key]['languageCode'];
    final String countryCode=optionslocales[key]['countryCode'];
    Get.updateLocale(Locale(languageCode,countryCode));
    local.value=Get.locale.toString();
    storage.write("languageCode", languageCode);
    storage.write("countryCode", countryCode);
  }

}