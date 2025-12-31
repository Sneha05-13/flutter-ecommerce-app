import 'package:ecommerce_app/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class RProductDetailScreen extends StatelessWidget{
  const RProductDetailScreen ({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///---product image slider
            RCurvedEdgeWidget(
              child: Container(
                color: dark ? SColors.darkerGrey : SColors.light,
                child: const Stack(
                  children: [
                    //--Main Large Logo
                    SizedBox(height: 400, child: Padding(
                      padding: EdgeInsets.all(RSizes.productImageRadius * 2),
                      child: Center(child: Image(image: AssetImage(RImages.productImage1))),
                    ),
                ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}