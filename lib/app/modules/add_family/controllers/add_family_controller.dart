import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddFamilyController extends GetxController {
  var formKeyLogin;
  TextEditingController nameC = TextEditingController();
  var validateName = false.obs;
  var errName = ''.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
