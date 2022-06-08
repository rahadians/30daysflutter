import 'package:flutter_zoom_drawer/config.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxBool isSlide = false.obs;
  final drawerController = ZoomDrawerController();

  void toggleDrawer() {
    drawerController.toggle?.call();
    update();
  }
}
