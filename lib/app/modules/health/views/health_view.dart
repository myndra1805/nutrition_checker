import 'dart:io';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nutrition_checker/app/widgets/extentions.dart';
import 'package:path_provider/path_provider.dart';
import 'package:camera/camera.dart';
import '../controllers/health_controller.dart';
import 'package:nutrition_checker/app/routes/app_pages.dart';

class HealthView extends GetView<HealthController> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: controller.initializeCamera(),
        builder: (_, snapshot) {
          return snapshot.connectionState == ConnectionState.done
              ? Container(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.7,
                      child: CameraPreview(controller.cameraController),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xff00345b)
                      ),
                      child: Icon(Icons.camera, color: Colors.white, size: 30,),
                    ).ripple(() async {
                      controller.file = await controller.cameraController.takePicture();
                      // Get.toNamed(Routes.ANALISIS_GIZI, arguments: controller.file);
                    }, borderRadius: BorderRadius.circular(50)),
                  ],
                ),
              )
              : Center(
                  child: SizedBox(height: 20, width: 20, child: CircularProgressIndicator(color: Color(0xff00345b))),
                );
        },
      ),
    );
  }
}
