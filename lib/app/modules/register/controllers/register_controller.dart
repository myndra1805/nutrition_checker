import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  TextEditingController emailC = TextEditingController();
  TextEditingController usernameC = TextEditingController();
  TextEditingController passwordC = TextEditingController();
  TextEditingController confirmPasswordC = TextEditingController();
  var formKeyLogin;
  var passwordVisible = true.obs;
  var confirmPasswordVisible = true.obs;
  var validateUsername = false.obs;
  var validateEmail = false.obs;
  var validatePass = false.obs;
  var validateConfirmPass = false.obs;
  var mErrEmail = ''.obs;
  var mErrUsername = ''.obs;
  var mErrPass = ''.obs;
  var mErrConfirmPass = ''.obs;
  var showAlert = false.obs;

  @override
  void onInit() {
    formKeyLogin = GlobalKey<FormState>(debugLabel: "_register");
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
