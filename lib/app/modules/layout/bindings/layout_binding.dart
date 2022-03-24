import 'package:get/get.dart';
import 'package:nutrition_checker/app/modules/consultation/controllers/consultation_controller.dart';

import '../controllers/layout_controller.dart';
import 'package:nutrition_checker/app/modules/articles/controllers/articles_controller.dart';
import 'package:nutrition_checker/app/modules/health/controllers/health_controller.dart';
import 'package:nutrition_checker/app/modules/home/controllers/home_controller.dart';
import 'package:nutrition_checker/app/modules/shop/controllers/shop_controller.dart';

class LayoutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LayoutController>(
      () => LayoutController(),
    );
    Get.lazyPut<ArticlesController>(
      () => ArticlesController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<ShopController>(
      () => ShopController(),
    );
    Get.lazyPut<HealthController>(
      () => HealthController(),
    );
    Get.lazyPut<ConsultationController>(
      () => ConsultationController(),
    );
  }
}
