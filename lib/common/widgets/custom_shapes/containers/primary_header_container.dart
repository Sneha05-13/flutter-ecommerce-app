import 'package:ecommerce_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class RPrimaryHeaderContainer extends StatelessWidget {
  const RPrimaryHeaderContainer({
    super.key, required this.child,
    });

    final Widget child;

  @override
  Widget build(BuildContext context) {
    return RCurvedEdgeWidget(
              child:  Container(
              color: SColors.primary,
              padding: const EdgeInsets.all(0),
              child: SizedBox(
                height: 400,
                child: Stack(
                children: [
                  Positioned(top: -150, right: -250, child: RCircularContainer(backgroundColor: SColors.textWhite.withAlpha(26))),
                  Positioned(top: 100, right: -300, child: RCircularContainer(backgroundColor: SColors.textWhite.withAlpha(26))),
                  child,
                ],
              ),
            ),
           ),
           );
  }
}