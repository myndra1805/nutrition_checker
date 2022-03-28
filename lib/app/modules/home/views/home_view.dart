import 'dart:math';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nutrition_checker/app/models/consultation.dart';
import 'package:nutrition_checker/app/widgets/article_cart.dart';
import 'package:nutrition_checker/app/widgets/consultation_card.dart';
import 'package:nutrition_checker/app/widgets/extentions.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        margin: EdgeInsets.only(top: 20),
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Color(0xff00345b)),
                    ),
                    Row(
                      children: [
                        Text(
                          'Ari Yuhendra',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Color(0xff00345b)),
                        ),
                      ],
                    )
                  ],
                )),
                Container(
                  height: 50,
                  width: 50,
                  child: Image.network(
                    'https://cdn.vuetifyjs.com/images/lists/2.jpg',
                    fit: BoxFit.cover,
                  ),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                  clipBehavior: Clip.hardEdge,
                ),
              ],
            ),
            _category(context),
            Container(
                margin: EdgeInsets.only(top: 30),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        // padding: EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Your Family',
                          style: TextStyle(color: Colors.black38),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'See All',
                            style: TextStyle(color: Color(0xff00a7e6)),
                          ),
                        ),
                      ],
                    )),
                    Column(
                      children: <Widget>[
                        ...controller.families.map((family) {
                          return _item(family);
                        }).toList()
                      ],
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  Widget _category(context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: 80,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: controller.categories.map((category) {
          return Container(
            width: MediaQuery.of(context).size.width * 0.8,
            margin: EdgeInsets.symmetric(horizontal: 5),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(color: Color(0xff00345b), borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/${category['image']}', fit: BoxFit.cover),
                Text(
                  category['nama'],
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Icon(Icons.keyboard_arrow_right, color: Colors.white)
              ],
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _item(family) {
    int random = Random().nextInt(2);
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(top: 10, bottom: 10),
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
                      family.status == 'kid'
                          ? family.gender == 'l'
                              ? 'assets/boy.png'
                              : 'assets/girl.png'
                          : 'assets/pregnant.png',
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
                          family.name,
                          style: TextStyle(color: Color(0xff00345b), fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "${family.age}\n${family.gender == 'l' ? 'Boy' : 'Girl'}\n${family.status == 'kid' ? 'Children' : 'pregnant mother'}",
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
                      random == 1 ? 'assets/smile.png' : 'assets/smile1.png',
                      height: 50,
                    ),
                    Text(
                      random == 1 ? 'GOOD' : 'VERY GOOD',
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
