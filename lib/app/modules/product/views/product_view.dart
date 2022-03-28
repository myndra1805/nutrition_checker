import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nutrition_checker/app/widgets/extentions.dart';

import '../controllers/product_controller.dart';

class ProductView extends GetView<ProductController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              ListView(
                children: [
                  Image.network(
                    'https://cf.shopee.co.id/file/3c2de0f3e9732fbff678fa3ba76f33e9',
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Vitabumin 130ml - 1 pcs',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xff00345b)),
                        ),
                        Text(
                          'Vitamin',
                          style: TextStyle(color: Color(0xff00a7e6), fontSize: 12),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(color: Color(0xff00345b), fontSize: 16),
                            children: [
                              WidgetSpan(
                                child: Transform.translate(
                                  offset: const Offset(0.0, -7.0),
                                  child: Text(
                                    'Rp ',
                                    style: TextStyle(fontSize: 10, color: Color(0xff00345b), fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              TextSpan(text: '20.000', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Lorem ipsum dolor, sit amet consectetur adipisicing elit. At saepe officia officiis fuga et optio impedit rerum sapiente quos ut sequi id ad dolor provident cum, laudantium perferendis! Ad, unde.'),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  _iconButton(Icons.remove, Color(0xff00345b)),
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 5),
                                    child: Text(
                                      '1',
                                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  _iconButton(Icons.add, Color(0xff00345b)),
                                ],
                              ),
                            ),
                            Expanded(
                                child: Container(
                              decoration: BoxDecoration(border: Border.all(width: 1, color: Color(0xff00345b)), borderRadius: BorderRadius.circular(50), color: Color(0xff00345b)),
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.shopping_cart,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Add To Cart',
                                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ).ripple(() {}, borderRadius: BorderRadius.circular(50)))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              Positioned(
                left: 10,
                top: 10,
                child: Container(
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
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _iconButton(icon, color) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 6),
            blurRadius: 10,
            color: Color(0xFFB0B0B0).withOpacity(0.2),
          ),
        ],
      ),
      child: FlatButton(
        padding: EdgeInsets.zero,
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        onPressed: () {},
        child: Icon(
          icon,
          color: color,
        ),
      ),
    );
  }
}
