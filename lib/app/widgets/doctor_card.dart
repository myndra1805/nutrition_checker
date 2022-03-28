import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrition_checker/app/models/doctor.dart';
import 'package:nutrition_checker/app/routes/app_pages.dart';
import 'package:nutrition_checker/app/widgets/extentions.dart';

class DoctorCard extends StatelessWidget {
  final Doctor doctor;
  DoctorCard({Key? key, required this.doctor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), boxShadow: [BoxShadow(color: Color(0xfff8f8f8), spreadRadius: 2, offset: Offset(0, 5))], color: Colors.white),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 70,
                  margin: EdgeInsets.only(right: 10),
                  child: Image.network(
                    doctor.image,
                    fit: BoxFit.cover,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  clipBehavior: Clip.hardEdge,
                ),
                Expanded(
                  child: Container(
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [
                      Text(
                        doctor.name,
                        style: TextStyle(color: Color(0xff00345b), fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: Row(children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 14,
                          ),
                          Text(doctor.rating.toString(),style: TextStyle(color: Colors.black38, fontSize: 12),)
                        ]),
                      ),
                      Container(
                        child: Text(doctor.location, style: TextStyle(color: Colors.black38),),
                      )
                    ]),
                  ),
                )
              ],
            ),
          ],
        ),
      ).ripple((){
        Get.toNamed(Routes.DOCTOR);
      }, borderRadius: BorderRadius.circular(10)),
    );
  }
}
