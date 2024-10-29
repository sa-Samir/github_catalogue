import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_constants.dart';
import '../gesture/custom_ink_well.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final double iconSize;
  final Color color;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final double radius;
  const CustomIconButton({
    super.key,
    required this.icon,
    required this.onTap,
    this.iconSize = 24,
    this.color = AppColors.black,
    this.backgroundColor,
    this.padding,
    this.radius = 100,
  });

  @override
  Widget build(BuildContext context) {
    return CustomInkWell(
      onTap: () => onTap(),
      borderRadius: radius,
      child: Ink(
        padding:
            padding ?? const EdgeInsets.all(AppConstants.screenPadding * .5),
        decoration: BoxDecoration(
          color: backgroundColor ?? AppColors.inputBgGrey,
          borderRadius: BorderRadius.all(
            Radius.circular(radius),
          ),
        ),
        child: Icon(
          icon,
          size: iconSize,
          color: color,
        ),
      ),
    );
  }
}
