import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/layout_controller.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class LayoutView extends GetView<LayoutController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          resizeToAvoidBottomInset: false,
          // appBar: AppBar(
          //   automaticallyImplyLeading: false,
          //   title: CircleAvatar(
          //       backgroundColor: Colors.transparent,
          //       child: Container(
          //         clipBehavior: Clip.hardEdge,
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.all(Radius.circular(10))
          //         ),
          //         child: Image.network(
          //           'https://cdn.vuetifyjs.com/images/john.png',
          //           height: MediaQuery.of(context).size.height * 0.4,
          //           width: MediaQuery.of(context).size.width * 1,
          //           fit: BoxFit.cover,
          //         ),
          //       )),
          //       // actions: [
          //       //   IconButton(onPressed: (){

          //       //   }, icon: Icon(Icons., color: Color(0xff00345b)))
          //       // ],
          //   backgroundColor: Colors.white,
          //   brightness: Brightness.dark,
          //   // elevation: 1,
          // ),
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
