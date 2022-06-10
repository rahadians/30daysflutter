import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import './_assets/constant.dart';
import 'app/routes/app_pages.dart';

void main() async {
  Supabase supabase = await Supabase.initialize(
    url: BaseUrl.cBaseUrl,
    anonKey: BaseUrl.cAnonKey,
  );

  final SupabaseClient clients =
      SupabaseClient(BaseUrl.cBaseUrl, BaseUrl.cAnonKey);
  runApp(
    GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.white)),
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      title: "Flutter 30 Hari",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
