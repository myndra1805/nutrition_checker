import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nutrition_checker/app/routes/app_pages.dart';
import 'package:nutrition_checker/app/widgets/consultation_card.dart';
import 'package:nutrition_checker/app/widgets/extentions.dart';
import 'package:nutrition_checker/app/widgets/header.dart';
import '../controllers/consultation_controller.dart';

class ConsultationView extends GetView<ConsultationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: ListView(
          children: [
            Header(
                status: false,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Consultations',
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Konsultasi dengan para ahli dibidang nya untuk menangani masalah anda",
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    )
                  ],
                )),
            _category(context),
            _consultations(context)
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(Routes.DOCTORS);
        },
        backgroundColor: Color(0xff00345b),
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _category(context) {
    return Obx(() {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        width: MediaQuery.of(context).size.width,
        child: Row(
            children: controller.categories
                .map((category) => Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: controller.categoryActive.value == category ? Color(0xff00345b) : Colors.black12,
                        ),
                        width: MediaQuery.of(context).size.width * 25,
                        child: Text(
                          category,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold, color: controller.categoryActive.value == category ? Colors.white : Colors.black38),
                        ),
                      ).ripple(
                        () {
                          controller.categoryActive.value = category;
                        },
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ))
                .toList()),
      );
    });
  }

  Widget _consultations(context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      height: MediaQuery.of(context).size.height,
      child: ListView(
        children: <Widget>[
          ...controller.consultations.map((consultation) => ConsultationCard(consultation: consultation, onSelected: (item) {})),
        ],
      ),
    );
  }
}
