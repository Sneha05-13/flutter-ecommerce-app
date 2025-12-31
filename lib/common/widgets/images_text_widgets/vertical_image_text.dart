import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class RVerticalImageText extends StatelessWidget {
  const RVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = SColors.white,
    this.backgroundColor = SColors.white,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override 
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
          child: Padding(
                              padding: const EdgeInsets.only(right: RSizes.spaceBtwItems),
                              child: Column(
                              children: [
                                /// Circular icon
                                Container(
                                  width: 56,
                                  height: 56,
                                  padding: const EdgeInsets.all(RSizes.sm),
                                  decoration: BoxDecoration(
                                    color: backgroundColor ?? (dark ? SColors.black : SColors.white),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Center(
                                    child: Image(image: AssetImage(image), fit: BoxFit.cover, color: dark ? SColors.dark : SColors.dark,),
                                  ),
                                ),
                                /// Text
                                const SizedBox(height: RSizes.spaceBtwItems / 2),
                                 SizedBox(
                                  width: 55,
                                  child: 
                                   Text(
                                    title, 
                                     style: Theme.of(context).textTheme.labelMedium!.apply(color: textColor),
                                     maxLines: 1,
                                     overflow: TextOverflow.ellipsis,
                                     ),
                                 ),
                              ],
                              ),
                            ),
    );
  }
}

