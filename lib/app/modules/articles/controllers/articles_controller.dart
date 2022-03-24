import 'package:get/get.dart';
import 'package:nutrition_checker/app/models/article.dart';

class ArticlesController extends GetxController {
  
  List categoryList = [
    'Semua',
    'Berita',
    'Tips',
    'Info',
  ];

  List <Article> articles = [
    Article(id: 1, name: 'Stunting Akibat Gizi Buruk, Ini 3 Faktanya', category: 'Tips', isliked: false, image: 'https://d1bpj0tv6vfxyp.cloudfront.net/articles/a15f5c21-8671-4ddb-aa08-cd27108a21d3_article_image_url.webp', date: '23 Januari 2022'),
    Article(id: 2, name: 'Ibu, Ini 3 Cara Mencegah Stunting pada Balita', category: 'Tips', isliked: false, image: 'https://d1bpj0tv6vfxyp.cloudfront.net/articles/bc5a4c32-2bfb-4448-8de1-523b553555f9_article_image_url.webp', date: '02 Mai 2022'),
    Article(id: 3, name: 'Ternyata, Singkong Bantu Turunkan Risiko Stunting', category: 'Tips', isliked: false, image: 'https://d1bpj0tv6vfxyp.cloudfront.net/articles/3bddc06e-1ef1-4616-a129-03f86796c59d_article_image_url.webp', date: '12 Juli 2021'),
    Article(id: 4, name: 'Risiko Stunting pada Anak Meningkat selama Pandemi', category: 'Tips', isliked: false, image: 'https://d1bpj0tv6vfxyp.cloudfront.net/articles/9d7edebe-3f3b-4e74-8697-853b31c083b9_article_image_url.webp', date: '18 Agustus 2021'),
    Article(id: 5, name: '4 Nutrisi Penting untuk Mencegah Terjadinya Stunting', category: 'Tips', isliked: false, image: 'https://d1bpj0tv6vfxyp.cloudfront.net/articles/254758_19-5-2021_17-19-48.webp', date: '19 Maret 2022'),
    Article(id: 6, name: '4 Kondisi Terjadi pada Anak yang Alami Stunting', category: 'Tips', isliked: false, image: 'https://d1bpj0tv6vfxyp.cloudfront.net/articles/315821_19-4-2021_15-56-2.webp', date: '27 September 2021'),
  ];

  var categoryActive = 'Semua'.obs;
  var articleActive = 1.obs;
  
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
