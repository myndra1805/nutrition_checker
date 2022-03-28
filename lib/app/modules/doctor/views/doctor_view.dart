import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nutrition_checker/app/routes/app_pages.dart';
import 'package:nutrition_checker/app/widgets/extentions.dart';
import 'package:nutrition_checker/app/widgets/header.dart';

import '../controllers/doctor_controller.dart';

class DoctorView extends GetView<DoctorController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: Header(
                    status: true,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 2, offset: Offset(0, 4), spreadRadius: 4)],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 70,
                            margin: EdgeInsets.only(right: 10),
                            child: Image.network(
                              'https://cdn.vuetifyjs.com/images/lists/1.jpg',
                              fit: BoxFit.cover,
                            ),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                            clipBehavior: Clip.hardEdge,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'dr. Rudi Zulfadli, Sp.A, MKes',
                                  style: TextStyle(color: Color(0xff00345b), fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Text(
                                  'RSIA Bunda Jakarta (Menteng, Jakarta)',
                                  style: TextStyle(color: Colors.black38),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ))),
            Expanded(
              flex: 5,
              child: Container(
                margin: EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    Row(
                      children: [
                        _item('Partients', '100+'),
                        _item('Experiences', '4 Years'),
                        _item('Rating', '4.0'),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'About Doctor',
                            style: TextStyle(color: Color(0xff00345b), fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ullam, explicabo perspiciatis repudiandae excepturi velit autem. Ullam placeat quia asperiores? Voluptatem atque velit, praesentium nesciunt incidunt commodi perferendis libero nulla repellendus.',
                            style: TextStyle(height: 2),
                          )
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                        child: Container(
                          decoration: BoxDecoration(border: Border.all(width: 1, color: Color(0xff00345b)), borderRadius: BorderRadius.circular(50), color: Color(0xff00345b)),
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Book Apointment',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ).ripple(() {
                          Get.toNamed(Routes.CREATE_APPOINTMENT);
                        }, borderRadius: BorderRadius.circular(50))),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }

  Widget _item(title, value) {
    return Expanded(
        child: Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.only(top: 10, bottom: 10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white, boxShadow: [BoxShadow(offset: Offset(0, 1), color: Colors.black12, blurRadius: 1, spreadRadius: 1)]),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.black38),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            value,
            style: TextStyle(color: Color(0xff00345b), fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ],
      ),
    ));
  }
}
