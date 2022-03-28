import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nutrition_checker/app/routes/app_pages.dart';
import 'package:nutrition_checker/app/widgets/doctor_card.dart';
import 'package:nutrition_checker/app/widgets/extentions.dart';
import 'package:nutrition_checker/app/widgets/header.dart';

import '../controllers/doctors_controller.dart';

class DoctorsView extends GetView<DoctorsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Header(
                  status: true,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'DOCTORS',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Find great doctors in dealing with the problems at hand",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                )),
            Expanded(
              flex: 5,
              child: Container(
                child: ListView(
                  children: controller.doctors.map((doctor) => DoctorCard(doctor: doctor)).toList(),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
