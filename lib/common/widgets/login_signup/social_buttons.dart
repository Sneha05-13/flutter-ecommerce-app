import 'package:flutter/material.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';

class RSocialButtons extends StatelessWidget {
  const RSocialButtons ({super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container( 
                      decoration: BoxDecoration(border: Border.all(color: SColors.grey), borderRadius: BorderRadius.circular(100)),
                      child: IconButton(onPressed:() {},
                        icon: const Image(
                        width: RSizes.iconMd,
                        height: RSizes.iconMd,
                        image: AssetImage(RImages.google),
                      )),
                    ),
                    const SizedBox(width: RSizes.spaceBtwItems),
                    Container( 
                      decoration: BoxDecoration(border: Border.all(color: SColors.grey), borderRadius: BorderRadius.circular(100)),
                      child: IconButton(onPressed:() {},
                      icon: const Image(
                        width: RSizes.iconMd,
                        height: RSizes.iconMd,
                        image: AssetImage(RImages.facebook),
                      )
                      ),
                    ),
                    const SizedBox(width: RSizes.spaceBtwItems),
                    Container( 
                      decoration: BoxDecoration(border: Border.all(color: SColors.grey), borderRadius: BorderRadius.circular(100)),
                      child: IconButton(onPressed:() {},
                      icon: const Image(
                        width: RSizes.iconMd,
                        height: RSizes.iconMd,
                        image: AssetImage(RImages.instagram),
                      )
                      ),
                    ),
                 ],
               );
  }


}