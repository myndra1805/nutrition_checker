import 'package:get/get.dart';
import 'package:nutrition_checker/app/modules/consultation/views/consultation_view.dart';
import 'package:nutrition_checker/app/modules/home/views/home_view.dart';
import 'package:nutrition_checker/app/modules/articles/views/articles_view.dart';
import 'package:nutrition_checker/app/modules/health/views/health_view.dart';
import 'package:nutrition_checker/app/modules/shop/views/shop_view.dart';

class LayoutController extends GetxController {
  var tabIndex = 0.obs;
  var screens = [HomeView(), HealthView(), ConsultationView(), ArticlesView(), ShopView()];

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }


  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
