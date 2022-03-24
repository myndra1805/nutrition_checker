import 'package:get/get.dart';
import 'package:nutrition_checker/app/models/consultation.dart';

class ConsultationController extends GetxController {

  List categories = [
    'Semua',
    'Upcoming',
    'Complate',
    'Canceled'
  ];

  List <Consultation> consultations = [
    Consultation(id: 1, name: 'Dr. Jhon', image: 'https://cdn.vuetifyjs.com/images/john.png', date: '12 Aug 2021', time: '11.00 - 12.00 WIB', link: ''),
  ];

  var categoryActive = 'Semua'.obs;

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
