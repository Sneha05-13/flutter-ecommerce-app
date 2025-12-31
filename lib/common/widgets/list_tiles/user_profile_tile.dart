import 'package:ecommerce_app/common/widgets/images/circular_image.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class RUserProfileTile extends StatelessWidget {
  const RUserProfileTile ({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
                      leading: RCircularImage(image: RImages.user, width: 50, height: 50, padding: 0),
                        title: Text('Ecommerce_app', style: Theme.of(context).textTheme.headlineSmall!.apply(color: SColors.white)),
                        subtitle: Text('support@ecomm_app.com', style: Theme.of(context).textTheme.bodyMedium!.apply(color: SColors.white)),
                        trailing: IconButton(onPressed: (){}, icon: const Icon(Iconsax.edit, color: SColors.white)),
                    );
  }
}