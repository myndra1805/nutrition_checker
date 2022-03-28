import 'package:get/get.dart';
import 'package:nutrition_checker/app/models/article.dart';
import 'package:nutrition_checker/app/models/family.dart';

class HomeController extends GetxController {
  List categories = [
    {
      'nama': 'Nutriton Checker',
      'image': 'cek-gizi.png'
    },
    {
      'nama': 'Consultations',
      'image': 'konsultasi.png'
    },
    {
      'nama': 'Articlees',
      'image': 'artikel.png'
    },
    {
      'nama': 'E-Catalogue',
      'image': 'shop.png'
    }
  ];

  // List<Article> articles = [
  //    Article(id: 1, name: 'Stunting Akibat Gizi Buruk, Ini 3 Faktanya', category: 'Tips', isliked: false, image: 'https://d1bpj0tv6vfxyp.cloudfront.net/articles/a15f5c21-8671-4ddb-aa08-cd27108a21d3_article_image_url.webp', date: '23 Januari 2022'),
  //   Article(id: 2, name: 'Ibu, Ini 3 Cara Mencegah Stunting pada Balita', category: 'Tips', isliked: false, image: 'https://d1bpj0tv6vfxyp.cloudfront.net/articles/bc5a4c32-2bfb-4448-8de1-523b553555f9_article_image_url.webp', date: '02 Mai 2022'),
  //   Article(id: 3, name: 'Ternyata, Singkong Bantu Turunkan Risiko Stunting', category: 'Tips', isliked: false, image: 'https://d1bpj0tv6vfxyp.cloudfront.net/articles/3bddc06e-1ef1-4616-a129-03f86796c59d_article_image_url.webp', date: '12 Juli 2021'),
  // ];

  List <Family> families = [
    Family(id: 1, name: 'Rudi Zulfadli', gender: 'l', age: '2 Tahun', status: 'kid'),
    Family(id: 2, name: 'Salsabila Larasati', gender: 'p', age: '1 Tahun', status: 'kid'),
    Family(id: 3, name: 'Gusrizal', gender: 'l', age: '3 Tahun', status: 'kid'),
    Family(id: 4, name: 'Ayu Pertiwi', gender: 'p', age: '5 Bulan', status: 'pregnant'),
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
