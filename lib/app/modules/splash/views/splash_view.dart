import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nutrition_checker/app/routes/app_pages.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        body: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: PageView.builder(
                      onPageChanged: (value) {
                        controller.currentPage.value = value;
                      },
                      itemCount: controller.splashData.length,
                      itemBuilder: (context, index) {
                        var item = controller.splashData[index];
                        return _splashContent(
                          context,
                          item['text'],
                          item["image"],
                        );
                      }),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: (20 / 375.0) * MediaQuery.of(context).size.width),
                    child: Column(
                      children: <Widget>[
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            controller.splashData.length,
                            (index) => buildDot(index: index),
                          ),
                        ),
                        Spacer(flex: 3),
                        FlatButton(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          color: Color(0xff00345b),
                          onPressed: () {
                            Get.offAndToNamed(Routes.LOGIN);
                          },
                          child: Text(
                            'Continue',
                            style: TextStyle(
                              fontSize: (18 / 375.0) * MediaQuery.of(context).size.width,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }

  Widget _splashContent(context, text, image) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          "NUTRITION CHEKERS",
          style: TextStyle(
            fontSize: 20,
            color: Color(0xff00345b),
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10,),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(flex: 2),
        Image.asset(
          image,
          height: (265 / 812.0) * MediaQuery.of(context).size.height,
          width: (235 / 375.0) * MediaQuery.of(context).size.width,
        ),
      ],
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: controller.currentPage.value == index ? 20 : 6,
      decoration: BoxDecoration(
        color: controller.currentPage.value == index ? Color(0xff00345b) : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
