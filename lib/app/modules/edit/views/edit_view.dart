import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mygetcli/app/modules/home/controllers/home_controller.dart';

import '../controllers/edit_controller.dart';

class EditView extends GetView<EditController> {
  final homeC = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    final data = homeC.findById(Get.arguments);
    controller.name.text = data.name!;
    controller.createdAt.text = data.createdAt!;
    return Scaffold(
      appBar: AppBar(
        title: Text('AddView'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            TextField(
              autocorrect: false,
              controller: controller.name,
              decoration: InputDecoration(
                labelText: 'Product Name',
                hintText: 'Input product name here...',
                border: OutlineInputBorder(),
              ),
              onEditingComplete: () =>
                  homeC.edit(Get.arguments, controller.name.text, controller.createdAt.text),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => homeC.edit(
                Get.arguments,
                controller.name.text,
                controller.createdAt.text,
              ),
              child: Text('EDIT PRODUCT'),
            ),
          ],
        ),
      ),
    );
  }
}
