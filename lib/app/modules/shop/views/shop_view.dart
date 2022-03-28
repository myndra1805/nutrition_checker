import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nutrition_checker/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:nutrition_checker/app/widgets/header.dart';
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
                Header(
                    status: false,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Shopping',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Fulfill your child's nutrition with the best products from us",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        )
                      ],
                    )),
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
          _icon(Icons.filter_alt, context, color: Color.fromARGB(255, 255, 255, 255), badge: false),
          SizedBox(width: 20),
          _icon(Icons.shopping_cart, context, color: Color.fromARGB(255, 255, 255, 255), badge: true)
        ],
      ),
    );
  }

  Widget _icon(IconData icon, BuildContext context, {Color color = const Color(0xffa8a09b), badge}) {
    return Stack(
      overflow: Overflow.visible,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50)), color: Color(0xff00345b), boxShadow: <BoxShadow>[
            BoxShadow(color: Color(0xfff8f8f8), blurRadius: 10, spreadRadius: 15),
          ]),
          child: Icon(
            icon,
            color: color,
          ),
        ).ripple(() {
          Get.toNamed(Routes.CART);
        }, borderRadius: BorderRadius.all(Radius.circular(13))),
        badge ? Positioned(
          top: -3,
          right: 0,
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              color: Color(0xff00a7e6),
              shape: BoxShape.circle,
              border: Border.all(width: 1.5, color: Colors.white),
            ),
            child: Center(
              child: Text(
                "2",
                style: TextStyle(
                  fontSize: 10,
                  height: 1,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ) : SizedBox()
      ],
    );
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
        childAspectRatio: 0.68,
        primary: true,
        children: List.generate(
            controller.productList.length,
            (index) => ProductCard(
                product: controller.productList[index],
                onSelected: (item) {
                  Get.toNamed(Routes.PRODUCT);
                })),
      ),
    );
  }
}
