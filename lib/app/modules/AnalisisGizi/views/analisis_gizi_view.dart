import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/analisis_gizi_controller.dart';

class AnalisisGiziView extends GetView<AnalisisGiziController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnalisisGiziView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AnalisisGiziView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
