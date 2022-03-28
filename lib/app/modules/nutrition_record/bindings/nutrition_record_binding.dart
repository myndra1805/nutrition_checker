import 'package:get/get.dart';

import '../controllers/nutrition_record_controller.dart';

class NutritionRecordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NutritionRecordController>(
      () => NutritionRecordController(),
    );
  }
}
