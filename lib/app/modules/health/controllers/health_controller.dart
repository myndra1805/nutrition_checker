import 'package:get/get.dart';
import 'package:nutrition_checker/app/models/family.dart';

class HealthController extends GetxController {


  List <Family> families = [
    Family(id: 1, name: 'Rudi Zulfadli', gender: 'l', age: '2 Tahun', status: 'kid'),
    Family(id: 2, name: 'Salsabila Larasati', gender: 'p', age: '1 Tahun', status: 'kid'),
    Family(id: 3, name: 'Gusrizal', gender: 'l', age: '3 Tahun', status: 'kid'),
    Family(id: 4, name: 'Ayu Pertiwi', gender: 'p', age: '5 Bulan', status: 'pregnant'),
  ];

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
    super.dispose();
  }
}
