import 'dart:io';

import 'package:camera/camera.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';

class HealthController extends GetxController {
  late CameraController cameraController;
  late XFile file;

  Future<void> initializeCamera()async{
    var cameras = await availableCameras();
    cameraController = CameraController(cameras[0], ResolutionPreset.max);
    await cameraController.initialize();
  }

  @override
  void onInit() async {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
  }

  @override
  void dispose() {
    cameraController.dispose();
    super.dispose();
  }
}
