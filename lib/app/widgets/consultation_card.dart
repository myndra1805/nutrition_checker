import 'package:flutter/material.dart';
import 'package:nutrition_checker/app/models/consultation.dart';
import 'package:nutrition_checker/app/widgets/extentions.dart';

class ConsultationCard extends StatelessWidget {
  final Consultation consultation;
  final ValueChanged<Consultation> onSelected;
  ConsultationCard({Key? key, required this.consultation, required this.onSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), boxShadow: [BoxShadow(color: Color(0xfff8f8f8), spreadRadius: 2, offset: Offset(0, 5))], color: Colors.white),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    margin: EdgeInsets.only(right: 10),
                    width: 40,
                    child: Image.network(
                      consultation.image,
                      fit: BoxFit.cover,
                    ),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                    clipBehavior: Clip.hardEdge,
                  ),
                  Text(
                    consultation.name,
                    style: TextStyle(color: Colors.black38),
                  ),
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.video_call,
                    color: Color(0xff00345b),
                    size: 28,
                  ))
            ],
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color.fromARGB(31, 207, 206, 206)),
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            margin: EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.date_range,
                          color: Colors.black38,
                        ),
                      ),
                      Expanded(
                          flex: 4,
                          child: Text(
                            consultation.date,
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black38,
                            ),
                          ))
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.access_time_sharp,
                          color: Colors.black38,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          consultation.time,
                          style: TextStyle(fontSize: 13, color: Colors.black38),
                        ),
                        flex: 4,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), border: Border.all(width: 1, color: Colors.black12)),
                  child: Text(
                    'Cancel',
                    textAlign: TextAlign.center,
                  ),
                ).ripple(() {}, borderRadius: BorderRadius.circular(30)),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), border: Border.all(width: 1, color: Colors.black12), color: Color(0xff00345b)),
                  child: Text(
                    'Reschedule',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ).ripple(() {}, borderRadius: BorderRadius.circular(30)),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
