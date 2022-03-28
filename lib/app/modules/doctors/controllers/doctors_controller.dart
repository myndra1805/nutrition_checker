import 'package:get/get.dart';
import 'package:nutrition_checker/app/models/doctor.dart';

class DoctorsController extends GetxController {
  List<Doctor> doctors = [
    Doctor(id: 1, name: 'dr. Gusrizal, M.Kes, Sp.A', image: 'https://cdn.vuetifyjs.com/images/lists/1.jpg', about: 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Facere amet aspernatur neque corporis quibusdam. Quia sapiente minima, reiciendis consequatur inventore fugit, dolore ducimus pariatur, distinctio ut ullam maxime rerum nemo?', rating: 4, location: 'Jakarta', experiences: 4, partients: 100),
    Doctor(id: 2, name: 'dr. Rudi Zulfadli, Sp.A, MKes', image: 'https://cdn.vuetifyjs.com/images/lists/2.jpg', about: 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Facere amet aspernatur neque corporis quibusdam. Quia sapiente minima, reiciendis consequatur inventore fugit, dolore ducimus pariatur, distinctio ut ullam maxime rerum nemo?', rating: 4, location: 'Jakarta', experiences: 4, partients: 100),
    Doctor(id: 3, name: 'dr. Suci Wulandari, Sp.A (K)', image: 'https://cdn.vuetifyjs.com/images/lists/3.jpg', about: 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Facere amet aspernatur neque corporis quibusdam. Quia sapiente minima, reiciendis consequatur inventore fugit, dolore ducimus pariatur, distinctio ut ullam maxime rerum nemo?', rating: 4, location: 'Jakarta', experiences: 4, partients: 100),
    Doctor(id: 4, name: 'dr. Yuliarti, Sp.A', image: 'https://cdn.vuetifyjs.com/images/lists/4.jpg', about: 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Facere amet aspernatur neque corporis quibusdam. Quia sapiente minima, reiciendis consequatur inventore fugit, dolore ducimus pariatur, distinctio ut ullam maxime rerum nemo?', rating: 4, location: 'Jakarta', experiences: 4, partients: 100),
    Doctor(id: 5, name: 'dr. Dina Ayu RD, Sp.A', image: 'https://cdn.vuetifyjs.com/images/lists/5.jpg', about: 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Facere amet aspernatur neque corporis quibusdam. Quia sapiente minima, reiciendis consequatur inventore fugit, dolore ducimus pariatur, distinctio ut ullam maxime rerum nemo?', rating: 4, location: 'Jakarta', experiences: 4, partients: 100),
  ];

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
