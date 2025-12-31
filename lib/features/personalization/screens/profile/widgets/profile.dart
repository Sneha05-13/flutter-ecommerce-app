import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/common/widgets/images/circular_image.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/features/personalization/screens/profile/widgets/widgets/profile_menu.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget{
  const ProfileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(
        showBackArrow: true, title: Text('Profile')),

      //---Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(RSizes.defaultSpace),
          child: Column(
            children: [
              //---Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                     const RCircularImage(image: RImages.user, width: 80, height: 80),
                     TextButton(onPressed: (){}, child: const Text('Change Profile Picture')),
                  ],
                ),
              ),

              //--Details
              const SizedBox(height: RSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: RSizes.spaceBtwItems),

              //--Heading Profile Info
              RSectionHeading(title: 'Profile Information', showActionButton: false),
              const SizedBox(height: RSizes.spaceBtwItems),

              RProfileMenu(onPressed: (){}, title: 'Name', value: 'Ecommerce_App'),
              RProfileMenu(onPressed: (){}, title: 'Username', value: 'ecommerce_app'),

              const SizedBox(height: RSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: RSizes.spaceBtwItems),

              //---Heading Personal Info
              const RSectionHeading(title: 'Personal Information', showActionButton: false),
              const SizedBox(height: RSizes.spaceBtwItems),

              RProfileMenu(onPressed: (){}, title: 'User ID', value: '35761', icon: Iconsax.copy),
              RProfileMenu(onPressed: (){}, title: 'E-mail', value: 'ecomm_app'),
              RProfileMenu(onPressed: (){}, title: 'Phone Number', value: '+92-656-1276503'),
              RProfileMenu(onPressed: (){}, title: 'Gender', value: 'Male'),
              RProfileMenu(onPressed: (){}, title: 'Date of Birth', value: '10 Aug 2003'),
              const Divider(),
              const SizedBox(height: RSizes.spaceBtwItems),


              Center(
                child: TextButton(
                  onPressed: (){}, 
                  child: const Text('Close Account', style: TextStyle(color: Colors.red)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}