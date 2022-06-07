import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class LoginController extends GetxController {
  RxString username = "".obs;
  RxBool isChangeButton = false.obs;

  final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();
  TextEditingController usernameC = TextEditingController();
  TextEditingController passwordC = TextEditingController();

  moveToHome(BuildContext context) async {
    if (registerFormKey.currentState!.validate()) {
      isChangeButton.toggle();
      print(isChangeButton.value);
      await Future.delayed(Duration(seconds: 1));
      Get.toNamed(Routes.HOME);
    }
  }

  String? validateuser(String value) {
    if (value.length == null || value.isEmpty) {
      return "Title Wajib Diisi";
    }
    return null;
  }

  String? validatepassword(String value) {
    if (value.length == null || value.isEmpty) {
      return "password Wajib Diisi";
    }
    return null;
  }

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
