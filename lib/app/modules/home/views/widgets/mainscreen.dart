import 'package:flutter/material.dart';
import 'package:fluttertigapuluh/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';

class MainScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      child: Center(
        child: ElevatedButton(
          onPressed: controller.toggleDrawer,
          child: Text("Toggle Drawer"),
        ),
      ),
    );
  }
}
