import 'package:ecommerce_app/utils/constants/enums.dart';
import 'package:flutter/material.dart';

class SBrandTitleText extends StatelessWidget {
  const SBrandTitleText({
    super.key,
    this.color,
    this.maxLines = 1,
    required this.title,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small
  });

  final Color? color;
  final String title;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      // check which brandsize is required and set that style,
      style: brandTextSize == TextSizes.small
         ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
         : brandTextSize == TextSizes.medium
            ? Theme.of(context).textTheme.labelLarge!.apply(color: color)
            : brandTextSize == TextSizes.large
                ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
                : Theme.of(context).textTheme.bodyMedium!.apply(color: color)
    );
  }
}