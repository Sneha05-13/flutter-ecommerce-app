import 'package:ecommerce_app/features/shop/screens/cart/widgets/cart.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SCartCounterIcon extends StatelessWidget {
  const SCartCounterIcon({
    super.key,
    required this.onPressed, 
    this.iconColor,
  });

  final VoidCallback onPressed;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
                    return Stack(
                      children: [
                        IconButton(onPressed: () => Get.to(()=> const RCartScreen()), icon: Icon(Iconsax.shopping_bag, color: iconColor)),
                        Positioned(
                          right: 0,
                          child: Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: SColors.black,
                            borderRadius: BorderRadius.circular(100),
                          ), 
                          child: Center(
                            child: Text('2', style: Theme.of(context).textTheme.labelLarge!.apply(color: SColors.white, fontSizeFactor: 0.8)),
                          ),  
                        ),
                      ),
                      ],
                    );
  }
}
