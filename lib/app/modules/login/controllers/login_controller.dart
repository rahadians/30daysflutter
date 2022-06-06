import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  RxString username = "".obs;
  RxBool isChangeButton = false.obs;

  TextEditingController usernameC = TextEditingController();
  TextEditingController passwordC = TextEditingController();

  @override
  void onInit() {
    // TODO: implement onInit
    usernameC = TextEditingController();
    passwordC = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    usernameC.dispose();
    passwordC.dispose();
    super.onClose();
  }
}
