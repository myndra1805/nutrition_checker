import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nutrition_checker/app/widgets/header.dart';

import '../controllers/create_appointment_controller.dart';

class CreateAppointmentView extends GetView<CreateAppointmentController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        child: Column(
          children: [
            Header(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'CREATE APPOINTMENT',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
                status: true),
            Expanded(
              child: Container(
                  height: MediaQuery.of(context).size.height,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Form(
                      key: controller.formKeyLogin,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  child: Image.network(
                                    'https://cdn.vuetifyjs.com/images/lists/2.jpg',
                                    // width: MediaQuery.of(context).size.width,
                                    fit: BoxFit.cover,
                                  ),
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                  clipBehavior: Clip.hardEdge,
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                                ),
                              )
                            ]),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            validator: (val) {
                              if (val == null || val.isEmpty) {
                                return 'Date field is required';
                              }
                              return null;
                            },
                            cursorColor: Color(0xff00345b),
                            controller: controller.date,
                            readOnly: true,
                            onTap: () {},
                            decoration: InputDecoration(
                                hintText: 'Date',
                                hintStyle: TextStyle(color: Color(0xff00345b)),
                                prefixIcon: Icon(Icons.date_range, color: Color(0xff00345b)),
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
                                errorText: controller.validateDate.value ? controller.errDate.value : null),
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(color: Color(0xff00345b)),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                          TextFormField(
                            validator: (val) {
                              if (val == null || val.isEmpty) {
                                return 'Time field is required';
                              }
                              return null;
                            },
                            cursorColor: Color(0xff00345b),
                            controller: controller.time,
                            readOnly: true,
                            onTap: () {},
                            decoration: InputDecoration(
                                hintText: 'Time',
                                hintStyle: TextStyle(color: Color(0xff00345b)),
                                prefixIcon: Icon(Icons.access_time_sharp, color: Color(0xff00345b)),
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
                                errorText: controller.validateTime.value ? controller.errTime.value : null),
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(color: Color(0xff00345b)),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(29),
                              child: FlatButton(
                                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                                color: Color(0xff00345b),
                                onPressed: () {
                                  if (controller.formKeyLogin.currentState!.validate()) {}
                                },
                                child: Text(
                                  'SUBMIT',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ))),
            ),
          ],
        ),
      ),
    ));
  }
}
