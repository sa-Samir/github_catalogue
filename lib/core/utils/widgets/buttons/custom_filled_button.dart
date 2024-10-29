import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_constants.dart';
import '../../../constants/text_styles.dart';

class CustomFilledButton extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  final double height;
  final Color backgroundColor;
  final Color foregroundColor;
  final TextStyle textStyle;
  final Color borderColor;
  final double radius;
  final IconData? icon;
  final double borderWidth;
  final double? elevation;
  final EdgeInsetsGeometry? padding;
  const CustomFilledButton({
    super.key,
    required this.title,
    required this.onTap,
    this.height = AppConstants.btnHeight,
    this.backgroundColor = AppColors.secondary,
    this.foregroundColor = AppColors.white,
    this.textStyle = TextStyles.semi16,
    this.borderColor = AppColors.transparent,
    this.radius = AppConstants.smallBorderRadius,
    this.icon,
    this.borderWidth = 1.0,
    this.elevation = 0,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
      style: FilledButton.styleFrom(
        fixedSize: Size.fromHeight(height),
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        textStyle: textStyle,
        padding: padding,
        elevation: elevation,
        minimumSize: Size(64, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
          side: BorderSide(color: borderColor, width: borderWidth),
        ),
      ),
      onPressed: onTap,
      icon: icon != null
          ? Icon(
              icon,
              size: AppConstants.iconSize,
            )
          : null,
      label: Text(
        title,
      ),
    );
  }
}
