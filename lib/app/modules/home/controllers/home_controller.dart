import 'package:flutter_zoom_drawer/config.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../_assets/data/models/catalog.dart';

class HomeController extends GetxController {
  RxBool isSlide = false.obs;
  RxBool isLoading = false.obs;
  RxList<TblCatalog> allList = List<TblCatalog>.empty().obs;

  final drawerController = ZoomDrawerController();

  late Future<dynamic> dataFuture;
  late SupabaseClient client = Supabase.instance.client;

  void toggleDrawer() {
    drawerController.toggle?.call();
    update();
  }

  Future<void> getAllList() async {
    isLoading.value = true;
    try {
      PostgrestResponse<dynamic> response = await client
          .from("tbl_catalog")
          .select()
          .order("id", ascending: true)
          .execute();

      List<TblCatalog> dataList =
          TblCatalog.fromJsonList((response.data as List));

      allList.value = List.from(dataList);

      allList.refresh();
      print(allList.value);
    } catch (err) {
      print(err);
    }

    isLoading.value = false;
    Get.back();
  }
}
