import 'package:get/get.dart';

class SplashController extends GetxController {
  List<Map<String, String>> splashData = [
    {"text": "Monitor every nutrient that goes \ninto children and pregnant women", "image": "assets/cek-gizi.png"},
    {"text": "We help people connect with \nthe best doctors around Indonesia", "image": "assets/konsultasi.png"},
    {"text": "Read our latest articles \nto increase your knowledge", "image": "assets/artikel.png"},
    {"text": "Meet your child's nutritional \nneeds by shopping with us", "image": "assets/shop.png"},
  ];

  var currentPage = 0.obs;

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
