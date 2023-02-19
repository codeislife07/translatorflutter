import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:translatorflutter/AppTranslations.dart';
import 'package:translatorflutter/ChangeLan.dart';
import 'package:translatorflutter/InitialBinding.dart';
import 'package:translatorflutter/StorageService.dart';

var storage;
void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  //init
  await initalConfig();
//initalize
   storage=Get.find<StorageService>();
  runApp( MyApp());
}

initalConfig()async {
  await Get.putAsync(() => StorageService().init());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      translations: AppTranslations(),
      locale: storage.lanCode!=null
            ?Locale(storage.lanCode!,storage.countryCode)
            :Locale("en","US"),
      fallbackLocale:Locale("en","US"),
      initialBinding: InitialBinding(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(),
     body: Center(child: Container(
       child: Column(
         children: [
           SizedBox(height: 100,),
           Text("hello".tr),
           Text("welcome".tr),
       LanguageMenu()
         ],
       ),
     )),
   );
  }

}
