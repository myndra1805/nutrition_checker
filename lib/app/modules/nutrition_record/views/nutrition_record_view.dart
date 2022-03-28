import 'dart:math';

import 'package:get/get.dart';
import 'package:nutrition_checker/app/widgets/header.dart';
import 'package:flutter/material.dart';
import '../controllers/nutrition_record_controller.dart';

class NutritionRecordView extends GetView<NutritionRecordController> {
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
                      Text(
                        'NUTRITION RECORD',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ],
                  ),
                )),
            Expanded(
              flex: 7,
              child: Container(
                child: ListView(
                  padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                  children: [
                    _item(),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return 'The field password is required';
                        }
                        return null;
                      },
                      cursorColor: Color(0xff00345b),
                      readOnly: true,
                      style: TextStyle(color: Color(0xff00345b)),
                      decoration: InputDecoration(
                        hintText: '12 Jan 2021',
                        hintStyle: TextStyle(color: Color(0xff00345b)),
                        prefixIcon: Icon(Icons.date_range, color: Color(0xff00345b)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Color(0xff00345b), width: 2.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Color(0xff00345b), width: 2.0),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      padding: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 2, offset: Offset(0, 4), spreadRadius: 4)],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Children's daily macronutrient needs: ",
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Color(0xff00345b), fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Name',
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Standard',
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        "Achieved",
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                ...controller.nutritions.map((nut) {
                                  return Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          nut.name,
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          nut.value,
                                          style: TextStyle(color: Colors.black38),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          "${Random().nextInt(int.parse(nut.value.split(' ')[0]))} ${nut.value.split(' ')[1]}",
                                          style: TextStyle(color: Colors.black38),
                                        ),
                                      ),
                                    ],
                                  );
                                }).toList()
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, bottom: 20),
                      padding: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 2, offset: Offset(0, 4), spreadRadius: 4)],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Children's daily micronutrient needs: ",
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Color(0xff00345b), fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Name',
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Standard',
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        "Achieved",
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                ...controller.vitamin.map((nut) {
                                  return Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          nut.name,
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          nut.value,
                                          style: TextStyle(color: Colors.black38),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          "${Random().nextInt(int.parse(nut.value.split(' ')[0]))} ${nut.value.split(' ')[1]}",
                                          style: TextStyle(color: Colors.black38),
                                        ),
                                      ),
                                    ],
                                  );
                                }).toList(),
                                ...controller.mineral.map((nut) {
                                  return Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          nut.name,
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          nut.value,
                                          style: TextStyle(color: Colors.black38),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          "${Random().nextInt(int.parse(nut.value.split(' ')[0]))} ${nut.value.split(' ')[1]}",
                                          style: TextStyle(color: Colors.black38),
                                        ),
                                      ),
                                    ],
                                  );
                                }).toList(),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.camera_alt,
          color: Colors.white,
        ),
        backgroundColor: Color(0xff00345b),
      ),
    );
  }

  Widget _item() {
    return Container(
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
          Expanded(
              flex: 2,
              child: Row(
                children: [
                  Container(
                    height: 70,
                    margin: EdgeInsets.only(right: 10),
                    child: Image.asset(
                      'assets/boy.png',
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
                          'Rudi Zulfadli',
                          style: TextStyle(color: Color(0xff00345b), fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "2 Tahun\nBoy\nChildren",
                          style: TextStyle(color: Colors.black38, height: 1.2),
                        ),
                      ],
                    ),
                  )
                ],
              )),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/smile.png',
                      height: 50,
                    ),
                    Text(
                      'GOOD',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Color(0xff00345b)),
                    )
                  ],
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
