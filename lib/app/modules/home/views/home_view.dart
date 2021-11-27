import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mygetcli/app/modules/home/views/item_view.dart';
import 'package:mygetcli/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ALL PRODUCTS'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => Get.toNamed(Routes.ADD),
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Obx(
        () => controller.products.isEmpty
            ? Center(
                child: Text('BELUM ADA DATA'),
              )
            : ListView.builder(
                itemCount: controller.products.length,
                itemBuilder: (context, i) {
                  final data = controller.products[i];
                  return ItemView(data);
                },
              ),
      ),
    );
  }
}
