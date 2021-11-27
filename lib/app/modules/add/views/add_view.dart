import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mygetcli/app/modules/home/controllers/home_controller.dart';

import '../controllers/add_controller.dart';

class AddView extends GetView<AddController> {
  @override
  Widget build(BuildContext context) {
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
                  Get.find<HomeController>().add(controller.name.text),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () =>
                  Get.find<HomeController>().add(controller.name.text),
              child: Text('ADD PRODUCT'),
            ),
          ],
        ),
      ),
    );
  }
}
