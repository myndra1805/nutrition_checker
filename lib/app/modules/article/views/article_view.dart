import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nutrition_checker/app/routes/app_pages.dart';
import 'package:nutrition_checker/app/widgets/title_text.dart';
import '../controllers/article_controller.dart';
import 'package:nutrition_checker/app/widgets/extentions.dart';

class ArticleView extends GetView<ArticleController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
          child: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 45,
                  height: 45,
                  child: Icon(
                    Icons.arrow_back,
                    color: Color(0xff00345b),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.white,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        spreadRadius: 1,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                ).ripple(() {
                  Get.back();
                }),
                Container(
                  width: 45,
                  height: 45,
                  child: Icon(Icons.favorite, color: Colors.red),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.white,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        spreadRadius: 1,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Image.network(
              'https://picsum.photos/200/300?random=2',
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: TitleText(
              text: 'Catat, Ini Panduan Untuk Mendapatkan Vaksin Booster',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xff00345b),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      margin: EdgeInsets.only(right: 10),
                      width: 40,
                      child: Image.network(
                        'https://cdn.vuetifyjs.com/images/john.png',
                        fit: BoxFit.cover,
                      ),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                      clipBehavior: Clip.hardEdge,
                    ),
                    Text(
                      'Ari Yuhendra',
                      style: TextStyle(color: Colors.black45),
                    )
                  ],
                ),
                Text(
                  '10 Januari 2021',
                  style: TextStyle(color: Colors.black45),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(children: [
              Text(
                'Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus cupiditate mollitia inventore corrupti. Non, autem laboriosam vel eum excepturi debitis quo blanditiis rerum molestiae. Possimus quod minima similique necessitatibus voluptatum exercitationem, maiores tempore fuga nostrum nesciunt suscipit ipsum molestiae facere autem? Nemo dolorem voluptates, deleniti molestias, expedita repudiandae iste dignissimos sint soluta,',
                style: TextStyle(height: 2),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'tempore voluptatem sequi excepturi sunt perferendis! Consequuntur veritatis ducimus dolore animi distinctio commodi vitae earum? Sint molestiae temporibus, quas sequi voluptas blanditiis expedita provident eos ullam maxime! Harum, in eligendi aut eveniet numquam minus. Veniam repellendus sequi reiciendis sint molestiae labore aliquid, autem debitis. Reprehenderit, minima aliquid? Natus harum reiciendis quo tempore mollitia nemo fugit animi,',
                style: TextStyle(height: 2),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                ' quasi ipsa repellendus sed iusto possimus facilis perferendis, numquam atque excepturi, molestiae voluptatum tenetur iure? Facere, reprehenderit! Incidunt reprehenderit voluptatibus provident ratione? Fuga mollitia, ut earum atque autem ea quod quas illum? Suscipit corporis distinctio perspiciatis esse placeat non praesentium. Illum iste exercitationem quibusdam mollitia qui similique animi illo nam repellendus corporis sequi voluptatum, facere culpa cupiditate dignissimos, dolor assumenda pariatur natus. Dolor, quae quibusdam.',
                style: TextStyle(height: 2),
              )
            ]),
          )
        ],
      )),
    ));
  }
}
