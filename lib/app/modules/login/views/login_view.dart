import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nutrition_checker/app/routes/app_pages.dart';
import 'package:nutrition_checker/app/widgets/social_card.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: size.height * 0.04),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Sign in with your email and password  \nor continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: size.height * 0.08),
                _form(size),
                SizedBox(height: size.height * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocalCard(
                      icon: "assets/google-icon.svg",
                      press: () {},
                    ),
                    SocalCard(
                      icon: "assets/facebook-2.svg",
                      press: () {},
                    ),
                    SocalCard(
                      icon: "assets/twitter.svg",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: 20),
                _textBottom(),
              ],
            ),
          ),
        ),
      ),
    ));
  }

  Widget _textBottom() {
    return RichText(
      text: TextSpan(text: 'Don\'t have an account?', style: TextStyle(color: Colors.black), children: <TextSpan>[
        TextSpan(
            text: ' Sign up',
            style: TextStyle(color: Color(0xff00345b), fontWeight: FontWeight.bold),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Get.toNamed(Routes.REGISTER);
              })
      ]),
    );
  }

  Widget _form(size) {
    return Obx(() {
        return Form(
            key: controller.formKeyLogin,
            child: Column(
              children: [
                TextFormField(
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return 'The field email is required';
                    }
                    return null;
                  },
                  cursorColor: Color(0xff00345b),
                  controller: controller.emailC,
                  decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Color(0xff00345b)),
                      prefixIcon: Icon(Icons.account_circle, color: Color(0xff00345b)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Color(0xff00345b), width: 2.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Color(0xff00345b), width: 2.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Color(0xff00345b), width: 2.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Color(0xff00345b), width: 2.0),
                      ),
                      errorText: controller.validateEmail.value ? controller.mErrEmail.value : null),
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: Color(0xff00345b)),
                ),
                SizedBox(height: 20),
                TextFormField(
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return 'The field password is required';
                    }
                    return null;
                  },
                  cursorColor: Color(0xff00345b),
                  obscureText: controller.passwordVisible.value,
                  style: TextStyle(color: Color(0xff00345b)),
                  controller: controller.passwordC,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                          !controller.passwordVisible.value ? Icons.visibility : Icons.visibility_off,
                          color: Color(0xff00345b),
                        ),
                        onPressed: () {
                          controller.passwordVisible.value = !controller.passwordVisible.value;
                        },
                      ),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Color(0xff00345b)),
                      prefixIcon: Icon(Icons.lock, color: Color(0xff00345b)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Color(0xff00345b), width: 2.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Color(0xff00345b), width: 2.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Color(0xff00345b), width: 2.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Color(0xff00345b), width: 2.0),
                      ),
                      errorText: controller.validatePass.value ? controller.mErrPass.value : null),
                  keyboardType: TextInputType.text,
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(child: Text('Forget Password ?', style: TextStyle(color: Color(0xff00345b), fontWeight: FontWeight.bold)), onPressed: () {}),
                ),
                SizedBox(height: 20),
                Container(
                  width: size.width,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(29),
                    // ignore: deprecated_member_use
                    child: FlatButton(
                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                      color: Color(0xff00345b),
                      onPressed: () {
                        if (controller.formKeyLogin.currentState.validate()) {
                          Get.offAndToNamed(Routes.LAYOUT);
                        }
                      },
                      child: Text(
                        'SIGN IN',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ));
      }
    );
  }
}
