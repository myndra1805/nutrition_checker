import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nutrition_checker/app/widgets/article_cart.dart';
import 'package:nutrition_checker/app/widgets/extentions.dart';
import 'package:nutrition_checker/app/widgets/header.dart';
import '../controllers/articles_controller.dart';
import 'package:nutrition_checker/app/routes/app_pages.dart';

class ArticlesView extends GetView<ArticlesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Header(
              status: false,
                child: Column(
              children: [
                SizedBox(height: 10,),
                Text(
                  'Our Articles',
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Get the latest information about stunting to increase your knowledge",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                )
              ],
            )),
            _search(context),
            _categoryWidget(context),
            _articles(context)
          ],
        ),
      )),
    );
  }

  Widget _search(context) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              height: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Color(0xffE1E2E4).withAlpha(100), borderRadius: BorderRadius.all(Radius.circular(10))),
              child: TextField(
                decoration: InputDecoration(border: InputBorder.none, hintText: "Search Articles", hintStyle: TextStyle(fontSize: 12), contentPadding: EdgeInsets.only(left: 10, right: 10, bottom: 0, top: 5), prefixIcon: Icon(Icons.search, color: Colors.black54)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _categoryWidget(BuildContext context) {
    return Obx(() {
      return Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(vertical: 20),
        child: Row(
          children: controller.categoryList
              .map(
                (category) => Expanded(
                    flex: 2,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        category,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: controller.categoryActive.value == category ? FontWeight.bold : FontWeight.normal, color: controller.categoryActive.value == category ? Color(0xff00345b) : Colors.black, fontSize: 16),
                      ),
                    ).ripple(() {
                      controller.categoryActive.value = category;
                    })),
              )
              .toList(),
        ),
      );
    });
  }

  Widget _articles(context) {
    return Obx(() {
      print(controller.categoryActive.value);
      return Expanded(
          child: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: <Widget>[
            ...controller.articles.map((article) => ArticleCard(
                  article: article,
                  onSelected: (item) {
                    Get.toNamed(Routes.ARTICLE);
                  },
                ))
          ],
        ),
      ));
    });
  }
}
