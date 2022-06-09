import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:fluttertigapuluh/_assets/data/models/catalog.dart';
import 'package:fluttertigapuluh/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';
import '../widgets/item_widget.dart';

class MainScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: controller.allList.value.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
                // child: Text(controller.allList.value[]),

                );
          }),
    );
  }
}
