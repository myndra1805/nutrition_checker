import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/layout_controller.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class LayoutView extends GetView<LayoutController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          resizeToAvoidBottomInset: false,
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(iconTheme: IconThemeData(color: Colors.white)),
            child: CurvedNavigationBar(
              backgroundColor: Colors.transparent,
              height: 60,
              items: <Widget>[
                Icon(
                  Icons.home,
                  size: 23,
                ),
                Icon(
                  Icons.health_and_safety,
                  size: 23,
                ),
                Icon(
                  Icons.quick_contacts_dialer,
                  size: 23,
                ),
                Icon(
                  Icons.article,
                  size: 23,
                ),
                Icon(
                  Icons.shopping_bag,
                  size: 23,
                ),
              ],
              color: Color(0xff00345b),
              onTap: (index) {
                controller.tabIndex.value = index;
              },
            ),
          ),
          body: controller.screens[controller.tabIndex.value],
        ));
  }
}
