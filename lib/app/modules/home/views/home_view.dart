import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'package:get/get.dart';
import '../views/widgets/drawer.dart';
import '../controllers/home_controller.dart';
import './widgets/mainscreen.dart';
import '../views/widgets/menuscreen.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GetBuilder<HomeController>(
          builder: (_) => ZoomDrawer(
                controller: _.zoomDrawerController,
                menuScreen: MenuScreen(),
                mainScreen: MainScreen(),
                borderRadius: 24.0,
                showShadow: true,
                angle: -12.0,
                drawerShadowsBackgroundColor: Colors.grey,
                slideWidth: MediaQuery.of(context).size.width * 0.65,
              )),
      drawer: SafeArea(
        child: MenuDrawer(),
      ),
    );
  }
}

