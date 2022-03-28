import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  
  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();
  var formKeyLogin;
  var passwordVisible = true.obs;
  var validateEmail = false.obs;
  var validatePass = false.obs;
  var mErrEmail = ''.obs;
  var mErrPass = ''.obs;
  var showAlert = false.obs;

  @override
  void onInit() {
    formKeyLogin = GlobalKey<FormState>(debugLabel: "_login");
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
