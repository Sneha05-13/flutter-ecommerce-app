import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce_app/common/widgets/images/circular_image.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({
    super.key,
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            RPrimaryHeaderContainer(
              child: Column(
                children: [
                  SAppBar(
                    title: Text('Account', style: Theme.of(context).textTheme.headlineMedium!.apply(color: SColors.white))),
                    const SizedBox(height: RSizes.spaceBtwSections),

                    //--User Profile Card
                    ListTile(
                      leading: RCircularImage(
                        image: RImages.user,
                        width: 50,
                        height: 50,
                        padding: 0,
                        ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}