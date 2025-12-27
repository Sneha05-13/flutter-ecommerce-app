import 'package:ecommerce_app/common/widgets/images_text_widgets/vertical_image_text.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class RHomeCategory extends StatelessWidget {
  const RHomeCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                          height: 80,
                          child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 6,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (_, index) {
                            return RVerticalImageText(image: RImages.shoesIcon, title: 'Shoes', onTap: () {}, );
                          },
                        ),
                        );
  }
}