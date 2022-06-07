import 'package:flutter/material.dart';
import 'package:fluttertigapuluh/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.5;

    return SafeArea(
      child: Scaffold(
          // floatingActionButton: FloatingActionButton(onPressed: () => get. )),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/login.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20,
                ),
                Obx(
                  (() => Text(
                        "Wellcome ${controller.username.value}",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      )),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Form(
                  key: controller.registerFormKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Container(
                    width: double.infinity,
                    height: 300,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 32),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                labelText: "UserName",
                                prefixIcon: Icon(Icons.computer_outlined),
                              ),
                              autocorrect: false,
                              keyboardType: TextInputType.name,
                              controller: controller.usernameC,
                              onChanged: (value) {
                                value = controller.usernameC.text;
                                controller.username.value = value;
                              },
                              onSaved: (value) {
                                controller.usernameC.text = value!;
                              },
                              validator: (value) {
                                return controller.validateuser(value!);
                              },
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                labelText: "Password",
                                prefixIcon: Icon(Icons.computer_outlined),
                              ),
                              autocorrect: false,
                              keyboardType: TextInputType.name,
                              controller: controller.passwordC,
                              onChanged: (value) {
                                value = controller.passwordC.text;
                              },
                              onSaved: (value) {
                                controller.validatepassword(value!);
                              },
                              validator: (value) {
                                return controller.validatepassword(value!);
                              },
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Material(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.circular(
                                  controller.isChangeButton.value ? 50 : 8),
                              child: InkWell(
                                splashColor: Colors.red,
                                onTap: () async {
                                  controller.moveToHome(context);
                                },
                                child: Obx(
                                  () => AnimatedContainer(
                                    duration: Duration(seconds: 1),
                                    width: (controller.isChangeButton.value)
                                        ? 50
                                        : 150,
                                    height: 50,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            (controller.isChangeButton.value)
                                                ? 20
                                                : 8),
                                        color: Colors.deepPurple),
                                    child: controller.isChangeButton.value
                                        ? Icon(
                                            Icons.done,
                                            color: Colors.white,
                                          )
                                        : Text(
                                            "Login",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
