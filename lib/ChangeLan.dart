import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:translatorflutter/LanguageController.dart';

class LanguageMenu extends GetView<LanguageController>{
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: null,
      child: PopupMenuButton(
        icon: Icon(Icons.language),
        offset: Offset(0,30),
        itemBuilder: (context)=>controller.optionslocales.entries.map((e){
          return PopupMenuItem(
              value: e.key,
              child: Text("${e.value['description']}"));
        }).toList(),
        onSelected: (newvalue){
          controller.updateLocale(newvalue);
        },
      ),
    );
  }

}