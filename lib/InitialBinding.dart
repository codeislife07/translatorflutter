import 'package:get/get.dart';
import 'package:translatorflutter/LanguageController.dart';

class InitialBinding extends Bindings{
  @override
  void dependencies() {
    //see we create this one
  Get.put(LanguageController(),permanent:true);
  }

}