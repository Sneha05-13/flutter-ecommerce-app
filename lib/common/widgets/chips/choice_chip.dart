import 'package:ecommerce_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class RChoiceChip extends StatelessWidget{
  const RChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = SHelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child:
        ChoiceChip(
                  label: isColor ? const SizedBox() : Text(text), 
                  selected: selected, 
                  onSelected: onSelected,
                  labelStyle: TextStyle(color: selected ? SColors.white : null),
                  avatar: isColor ? RCircularContainer(width: 50, height: 50, backgroundColor: SHelperFunctions.getColor(text)!) : null,
                  shape: isColor ? const CircleBorder() : null,
                  labelPadding: isColor ? const EdgeInsets.all(0) : null,
                  padding: isColor ? const EdgeInsets.all(0) : null,
                  backgroundColor: isColor ? SHelperFunctions.getColor(text)! : null,
                ),
    );
  }
}