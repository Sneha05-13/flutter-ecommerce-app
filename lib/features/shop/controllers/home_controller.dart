import 'package:get/get.dart';

class HomeController extends GetxController{
  static HomeController get insatnce => Get.find();

  final RxInt carouselCurrentIndex = 0.obs;

  void updatePageIndicator(int index) {
    carouselCurrentIndex.value = index;
    
  }
} 