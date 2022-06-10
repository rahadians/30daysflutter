import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:fluttertigapuluh/_assets/data/models/catalog.dart';
import 'package:fluttertigapuluh/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';
import '../widgets/item_widget.dart';

class MainScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    // final dummyListe=List.generate(50,((index) => TblCatalog.items[0]))
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.getAllList(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (controller.allList.value.length == null)
            ? Text("Data Kosong")
            : ListView.builder(
                itemCount: controller.allList.value.length,
                itemBuilder: (BuildContext context, int index) {
                  TblCatalog allData = controller.allList[index];
                  return Item_widget(allData: allData);
                }),
      ),
    );
  }
}
