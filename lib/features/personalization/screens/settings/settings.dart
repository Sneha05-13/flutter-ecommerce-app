import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce_app/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
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
                    

                    //--User Profile Card
                    const RUserProfileTile(),
                    const SizedBox(height: RSizes.spaceBtwSections),
                ],
              ),
            ),

            //---Body
            const Padding(
              padding: EdgeInsets.all(RSizes.defaultSpace),
              child: Column(
                children: [
                  RSectionHeading(title: 'Account Setting'),
                  SizedBox(height: RSizes.spaceBtwItems,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}