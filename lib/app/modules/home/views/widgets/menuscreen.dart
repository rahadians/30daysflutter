import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertigapuluh/app/modules/home/controllers/home_controller.dart';

import 'package:get/get.dart';

class MenuScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(color: Colors.grey),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("Rahadian Santoso"),
                  accountEmail: Text("rahadian@mail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://scontent.fcgk37-1.fna.fbcdn.net/v/t1.18169-9/10277699_816515541695084_1386950158676657973_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=VX8HJ2fEqcwAX8qRfAg&_nc_ht=scontent.fcgk37-1.fna&oh=00_AT-Srv2onVEcPnH1E5-A0ndIpeD6D5Phys4q-d9JB7NSaA&oe=62C4C265"),
                    maxRadius: 40,
                  ),
                )),
            Divider(
              thickness: 2,
              color: Colors.white60,
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            Divider(
              thickness: 2,
              color: Colors.white60,
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email Me",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
