import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nutrition_checker/app/widgets/product_icon.dart';
import 'package:nutrition_checker/app/widgets/product_card.dart';
import '../controllers/shop_controller.dart';
import 'package:nutrition_checker/app/widgets/extentions.dart';

class ShopView extends GetView<ShopController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Our Shop',
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Color(0xff00345b), fontSize: 24, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                _search(context),
                _categoryWidget(context),
                _productWidget(context)
              ],
            ),
          ),
        ));
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
                decoration: InputDecoration(border: InputBorder.none, hintText: "Search Products", hintStyle: TextStyle(fontSize: 12), contentPadding: EdgeInsets.only(left: 10, right: 10, bottom: 0, top: 5), prefixIcon: Icon(Icons.search, color: Colors.black54)),
              ),
            ),
          ),
          SizedBox(width: 20),
          _icon(Icons.shopping_cart, context, color: Color.fromARGB(255, 255, 255, 255))
        ],
      ),
    );
  }

  Widget _icon(IconData icon, BuildContext context, {Color color = const Color(0xffa8a09b)}) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50)), color: Color(0xff00345b), boxShadow: <BoxShadow>[
        BoxShadow(color: Color(0xfff8f8f8), blurRadius: 10, spreadRadius: 15),
      ]),
      child: Icon(
        icon,
        color: color,
      ),
    ).ripple(() {}, borderRadius: BorderRadius.all(Radius.circular(13)));
  }

  Widget _categoryWidget(BuildContext context) {
    return Obx(() {
      return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.1,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: controller.categoryList
              .map(
                (category) => ProductIcon(
                    model: category,
                    onSelected: (model) {
                      controller.model.value = category.id;
                    },
                    active: controller.model.value),
              )
              .toList(),
        ),
      );
    });
  }

  Widget _productWidget(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        children: controller.productList.map((product) {
          return ProductCard(
              product: product,
              onSelected: (item) {
                controller.productActive.value = product.id;
                print(item);
              });
        }).toList(),
      ),
    );
  }
}
