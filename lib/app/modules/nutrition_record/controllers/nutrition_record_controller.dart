import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrition_checker/app/models/nutrition_series.dart';

class NutritionRecordController extends GetxController {

  final List<NutritionSeries> nutritions = [
    NutritionSeries(name: 'Energy', value: '1125 kkal'),
    NutritionSeries(name: 'Protein', value: '26 gr'),
    NutritionSeries(name: 'Fat', value: '44 gr'),
    NutritionSeries(name: 'Carbohydrate', value: '115 gr'),
    NutritionSeries(name: 'Fiber', value: '16 gr'),
    NutritionSeries(name: 'Water', value: '1200 ml'),
  ];

  final List<NutritionSeries> vitamin = [
    NutritionSeries(name: 'Vitamin A', value: '400 mcg'),
    NutritionSeries(name: 'Vitamin D', value: '15 mcg'),
    NutritionSeries(name: 'Vitamin E', value: '6 mg'),
    NutritionSeries(name: 'Vitamin K', value: '15 mcg'),
  ];

  final List<NutritionSeries> mineral = [
    NutritionSeries(name: 'Calcium', value: '650 mg'),
    NutritionSeries(name: 'Phosphor', value: '500 mg'),
    NutritionSeries(name: 'Magnesium', value: '60 mg'),
    NutritionSeries(name: 'Sodium', value: '1000 mg'),
    NutritionSeries(name: 'Potassium', value: '3000 mg'),
    NutritionSeries(name: 'Iron', value: '8 mg'),
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
