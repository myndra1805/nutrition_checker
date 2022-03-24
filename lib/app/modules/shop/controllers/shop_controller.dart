import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:nutrition_checker/app/models/category.dart';
import 'package:nutrition_checker/app/models/product.dart';

class ShopController extends GetxController {
  List<Category> categoryList = [
    Category(id: 1, name: "Makanan", image: 'assets/food.jpg'),
    Category(id: 2, name: "Minuman", image: 'assets/drink.jpg'),
    Category(id: 3, name: "Buah/Sayur", image: 'assets/fruit.jpg'),
    Category(id: 4, name: "Vitamin", image: 'assets/drug.jpg'),
  ];

  List<Product> productList = [
    Product(id: 7, name: 'Vitabumin 130ml - 1 pcs', price: 720.00, likes: [], image: 'https://cf.shopee.co.id/file/3c2de0f3e9732fbff678fa3ba76f33e9', category: "Vitamin"),
    Product(id: 2, name: 'Little Joy MPASI Bayi', price: 220.00, likes: [], image: 'https://cf.shopee.co.id/file/ea56beacefb31cddd1d421109304d456', category: "Makanan"),
    Product(id: 6, name: 'Sayurbox Apel Fuji Import 1 kg', price: 620.00, likes: [], image: 'https://cf.shopee.co.id/file/34f6e143538207c45fe25cea31fdbe73', category: "Buah/Sayur"),
    Product(id: 3, name: 'DANCOW 3+VANILA', price: 320.00, likes: [], image: 'https://cf.shopee.co.id/file/c2c03653a5ab2c70f06be2af5532f129', category: "Minuman"),
    Product(id: 4, name: 'Yummy Bites Beberoll Ecer', price: 420.00, likes: [], image: 'https://cf.shopee.co.id/file/76256fd03c400637bb54b6ecb0585aa4', category: "Makanan"),
    Product(id: 5, name: 'Milna Nature Delight Fruit Puree', price: 520.00, likes: [], image: 'https://cf.shopee.co.id/file/98935bc3d9e615f5f51aed1ccf1668cb', category: "Minuman"),
    Product(id: 8, name: 'Wellbaby Multivitamin', price: 820.00, likes: [], image: 'https://cf.shopee.co.id/file/a061f889cc0392391cf9e0e532b759bb', category: "Vitamin"),
  ];

  var model = 1.obs;

  var productActive = 1.obs;

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
