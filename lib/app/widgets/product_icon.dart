import 'package:flutter/material.dart';
import 'package:nutrition_checker/app/models/category.dart';
import 'package:nutrition_checker/app/widgets/title_text.dart';
import 'package:nutrition_checker/app/widgets/extentions.dart';

class ProductIcon extends StatelessWidget {
  // final String imagePath;
  // final String text;
  final ValueChanged<Category> onSelected;
  final Category model;
  final int active;
  ProductIcon({Key? key, required this.model, required this.onSelected, required this.active}) : super(key: key);

  Widget build(BuildContext context) {
    // ignore: unnecessary_null_comparison
    return model.id == null
        ? Container(width: 5)
        : Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                color: active == model.id ? Color(0xff00345b) : Colors.transparent,
                border: Border.all(
                  color: active == model.id ? Color(0xff00345b) : Color(0xffA1A3A6),
                  width: active == model.id ? 2 : 1,
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: active == model.id ? Color(0xfffbf2ef) : Colors.white,
                    blurRadius: 10,
                    spreadRadius: 5,
                    offset: Offset(5, 5),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    margin: EdgeInsets.only(right: 5),
                    child: CircleAvatar(
                      backgroundColor: active == model.id ? Colors.white : Colors.transparent,
                      child: SizedBox(width: 50, height: 50, child: ClipOval(child: Image.asset(model.image, fit: BoxFit.cover,))),
                    ),
                  ),
                  // ignore: unnecessary_null_comparison
                  // model.image != null ?  Image.asset(model.image) : SizedBox(),

                  // ignore: unnecessary_null_comparison
                  Container(
                    child: TitleText(
                      text: model.name,
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: active == model.id ? Colors.white : Colors.black,
                    ),
                  )
                ],
              ),
            ).ripple(
              () {
                onSelected(model);
              },
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          );
  }
}
