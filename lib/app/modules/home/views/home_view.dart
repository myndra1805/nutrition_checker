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
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        margin: EdgeInsets.only(top: 20),
        child: ListView(
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
                          'Schedule Upcoming',
                          style: TextStyle(color: Colors.black38),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'See All',
                            style: TextStyle(color: Color(0xff00a7e6)),
                          ),
                        )
                      ],
                    )),
                    ConsultationCard(consultation: Consultation(id: 1, name: 'Dr. Jhon', image: 'https://cdn.vuetifyjs.com/images/john.png', date: '12 Aug 2021', time: '11.00 - 12.00 WIB', link: ''), onSelected: (item) {}),
                  ],
                )),
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
                          'New Articles',
                          style: TextStyle(color: Colors.black38),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'See All',
                            style: TextStyle(color: Color(0xff00a7e6)),
                          ),
                        )
                      ],
                    )),
                    ...controller.articles.map((article) => ArticleCard(article: article, onSelected: (item) {})).toList()
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
}
