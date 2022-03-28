import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nutrition_checker/app/widgets/cart_card.dart';
import 'package:nutrition_checker/app/widgets/check_out_card.dart';

import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
          itemCount: controller.productList.length,
          itemBuilder: (context, index) {
            var product = controller.productList[index];
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              // child: Dismissible(
              //   key: Key(product.id.toString()),
              //   direction: DismissDirection.endToStart,
              //   onDismissed: (direction) {},
              //   background: Container(
              //     padding: EdgeInsets.symmetric(horizontal: 20),
              //     decoration: BoxDecoration(
              //       color: Color(0xFFFFE6E6),
              //       borderRadius: BorderRadius.circular(15),
              //     ),
              //     child: Row(
              //       children: [
              //         Spacer(),
              //       ],
              //     ),
              //   ),
              //   child: CartCard(product: product),
              // ),
              child: CartCard(product: product),
            );
          },
        ),
      ),
      bottomNavigationBar: CheckoutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff00345b),
      title: Column(
        children: [
          Text(
            "Your Cart",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            "${controller.productList.length} items",
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
