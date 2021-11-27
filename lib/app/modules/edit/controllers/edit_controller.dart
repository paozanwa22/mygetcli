import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditController extends GetxController {
  late TextEditingController name;
  late TextEditingController createdAt;


  @override
  void onInit() {
    super.onInit();
    name = TextEditingController();
    createdAt = TextEditingController();
  }


  @override
  void onClose() {
    name.dispose();
    createdAt.dispose();
  }
}
