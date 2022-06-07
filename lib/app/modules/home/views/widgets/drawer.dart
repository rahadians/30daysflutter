import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:fluttertigapuluh/app/modules/home/controllers/home_controller.dart';
import '../widgets/mainscreen.dart';
import '../widgets/menuscreen.dart';

class MenuDrawer extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Drawer(
        
        child: ListView(

          
          children: const [
            
            Padding(
              padding: EdgeInsets.zero,
              child: DrawerHeader(
                  decoration: BoxDecoration(color: Colors.red),
                  child: Padding(
                      padding: EdgeInsets.zero,
                      child: UserAccountsDrawerHeader(
                        margin: EdgeInsets.zero,
                        accountName: Text("Rahadian"),
                        accountEmail: Text("rahadian@email.com"),
                        currentAccountPicture:
                            CircleAvatar(backgroundImage: NetworkImage("url")),
                      ))),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home),
              iconColor: Colors.white,
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home),
              iconColor: Colors.white,
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home),
              iconColor: Colors.white,
              title: Text(
                "Email",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.2,
              ),
            )
          ],
        ),
        //
      ),
    );
  }
}
