import 'package:get/get.dart';
import 'package:nutrition_checker/app/models/article.dart';

class HomeController extends GetxController {
  List categories = [
    {
      'nama': 'Cek Gizi',
      'image': 'cek-gizi.png'
    },
    {
      'nama': 'Konsultasi',
      'image': 'konsultasi.png'
    },
    {
      'nama': 'Baca Artikel',
      'image': 'artikel.png'
    },
    {
      'nama': 'Tokoh Online',
      'image': 'shop.png'
    }
  ];

  List<Article> articles = [
     Article(id: 1, name: 'Stunting Akibat Gizi Buruk, Ini 3 Faktanya', category: 'Tips', isliked: false, image: 'https://d1bpj0tv6vfxyp.cloudfront.net/articles/a15f5c21-8671-4ddb-aa08-cd27108a21d3_article_image_url.webp', date: '23 Januari 2022'),
    Article(id: 2, name: 'Ibu, Ini 3 Cara Mencegah Stunting pada Balita', category: 'Tips', isliked: false, image: 'https://d1bpj0tv6vfxyp.cloudfront.net/articles/bc5a4c32-2bfb-4448-8de1-523b553555f9_article_image_url.webp', date: '02 Mai 2022'),
    Article(id: 3, name: 'Ternyata, Singkong Bantu Turunkan Risiko Stunting', category: 'Tips', isliked: false, image: 'https://d1bpj0tv6vfxyp.cloudfront.net/articles/3bddc06e-1ef1-4616-a129-03f86796c59d_article_image_url.webp', date: '12 Juli 2021'),
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
