import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:fluttertigapuluh/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';

class MainScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color.fromARGB(255, 235, 98, 98),
      child: Center(
        child: ElevatedButton(
          onPressed: () => controller.toggleDrawer(),
          child: Text("Toggle Drawer"),
        ),
      ),
    ));
  }
}
