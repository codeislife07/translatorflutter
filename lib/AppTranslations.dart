import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'en_US':{
      'hello':'Hello World',
      'welcome':"Welcome"
    },
    'de_DE':{
      'hello':'Hello Welt',
      'welcome':"willfommen"
    },
    'pt_BR':{
      'hello':'Alo Mundo',
      'welcome':"Bem-vindo"
    },
  };

}
