

import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class SHomeAppBar extends StatelessWidget{
  const SHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SAppBar(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text(RTexts.homeAppbarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: SColors.grey)),
                      Text(RTexts.homeAppbarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: SColors.white)),
                      ],
                  ),
                  actions: [
                    SCartCounterIcon(onPressed: () {}, iconColor: SColors.white),
                  ],
                );
  }
 }


