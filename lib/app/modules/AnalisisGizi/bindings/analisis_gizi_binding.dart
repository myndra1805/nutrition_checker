import 'package:get/get.dart';

import '../controllers/analisis_gizi_controller.dart';

class AnalisisGiziBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AnalisisGiziController>(
      () => AnalisisGiziController(),
    );
  }
}
