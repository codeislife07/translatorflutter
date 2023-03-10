import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class StorageService extends GetxService{
  String? lanCode;
  String? countryCode;

  Future<StorageService> init()async{
    await GetStorage.init();
    lanCode=await GetStorage().read('languageCode');
    countryCode=await GetStorage().read('countryCode');
    return this;
  }
  void write(String key,String value){
    GetStorage().write(key,value);
  }


}