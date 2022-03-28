import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrition_checker/app/widgets/extentions.dart';

class Header extends StatelessWidget {
  final Widget child;
  final bool status;
  const Header({Key? key, required this.child, required this.status}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 30),
        decoration: BoxDecoration(
            color: Color(0xff00345b),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(40.0),
              bottomLeft: Radius.circular(40.0),
            )),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _top(),
                Container(
                  height: 40,
                  width: 40,
                  child: Image.network(
                    'https://cdn.vuetifyjs.com/images/lists/2.jpg',
                    fit: BoxFit.cover,
                  ),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                  clipBehavior: Clip.hardEdge,
                ),
              ],
            ),
            child
          ],
        ));
  }

  Widget _top() {
    if(!status){
      return Container();
    }
    return Container(
      width: 40,
      height: 40,
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
    });
  }
}
