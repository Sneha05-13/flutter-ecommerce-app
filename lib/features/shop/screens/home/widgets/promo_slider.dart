import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce_app/common/widgets/images/rounded_image.dart';
import 'package:ecommerce_app/features/shop/controllers/home_controller.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';

class RPromoSlider extends StatelessWidget {
  const RPromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
              children: [
                 CarouselSlider(
                   options: CarouselOptions(
                   viewportFraction: 0.88,
                   padEnds: false,
                   enlargeCenterPage: false,
                   onPageChanged: (index, _) => controller.updatePageIndicator(index),
              ),
              items: banners.map((url) => SRoundedImage(imageUrl: url)).toList(),
             ),
             const SizedBox(height: RSizes.spaceBtwItems),
              Center(
               child: Obx(
                () => Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (int  i = 0; i < banners.length; i++) 
                  RCircularContainer(
                  width: 20, 
                  height: 4, 
                  margin: EdgeInsets.only(right: 12),
                  backgroundColor: controller.carouselCurrentIndex.value == i ? SColors.primary : SColors.grey),
                ],
               ),
              ),
              ),
              ],
            );
  }
}