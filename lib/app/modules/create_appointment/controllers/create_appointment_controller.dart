import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class CreateAppointmentController extends GetxController {

  TextEditingController date = TextEditingController();
  TextEditingController time = TextEditingController();
  var formKeyLogin;
  var validateDate = false.obs;
  var errDate = ''.obs;
  var validateTime = false.obs;
  var errTime = ''.obs;


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
