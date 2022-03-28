import 'package:flutter/material.dart';

import 'package:nutrition_checker/app/models/product.dart';
import 'package:nutrition_checker/app/widgets/extentions.dart';
import 'package:nutrition_checker/app/widgets/title_text.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final ValueChanged<Product> onSelected;
  ProductCard({Key? key, required this.product, required this.onSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), boxShadow: [BoxShadow(blurRadius: 4, color: Colors.black12, spreadRadius: 1)]),
      child: Stack(children: [
        Column(
          children: <Widget>[
            Image.network(
              product.image,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5, top: 10),
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.start, children: [
                TitleText(
                  text: product.category,
                  fontSize: 12,
                  color: Color(0xff00a7e6),
                ),
                TitleText(
                  text: product.name,
                  fontSize: 14,
                ),
              ]),
            ),
          ],
        ),
        Positioned(
            right: 10,
            bottom: 10,
            child: RichText(
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
                  TextSpan(text: product.price.toString(), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                ],
              ),
            ))
      ]),
    ).ripple((){
      onSelected(product);
    }, borderRadius: BorderRadius.circular(20));
  }
}
