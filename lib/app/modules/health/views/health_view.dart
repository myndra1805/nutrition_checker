import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrition_checker/app/widgets/extentions.dart';
import 'package:nutrition_checker/app/widgets/header.dart';
import '../controllers/health_controller.dart';
import 'package:nutrition_checker/app/routes/app_pages.dart';

class HealthView extends GetView<HealthController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Header(
                  status: false,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'CHECK NUTRITION',
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Monitor the nutrition consumed by the mother during pregnancy and also your child",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      )
                    ],
                  )),
              Expanded(
                  child: GridView.count(
                padding: EdgeInsets.only(top: 20),
                crossAxisCount: 2,
                childAspectRatio: 0.9,
                children: controller.families.map((family) => _item(context, family)).toList(),
              ))
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(Routes.ADD_FAMILY);
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Color(0xff00345b),
      ),
    );
  }

  Widget _item(context, family) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      padding: EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 2, offset: Offset(0, 4), spreadRadius: 4)],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              child: Image.asset(
                family.status == 'kid' ? family.gender == 'l' ? 'assets/boy.png' : 'assets/girl.png' : 'assets/pregnant.png',
                fit: BoxFit.cover,
              ),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
              clipBehavior: Clip.hardEdge,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  family.name,
                  style: TextStyle(color: Color(0xff00345b), fontWeight: FontWeight.bold, height: 1.3),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "${family.age}\n${family.gender == 'l' ? 'Boy' : 'Girl'}\n${family.status == 'kid' ? 'Children' : 'pregnant mother'}",
                  style: TextStyle(color: Colors.black38,
                  height: 1.2),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          )
        ],
      ),
    ).ripple((){
      Get.toNamed(Routes.NUTRITION_RECORD);
    }, borderRadius: BorderRadius.circular(10));
  }
}
