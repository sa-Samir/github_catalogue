import 'package:flutter/material.dart';
import '../../../constants/app_colors.dart';

class CustomAssetImage extends StatelessWidget {
  final double? height;
  final double? width;
  final String imageLocation;
  final BoxFit? fit;
  final Color color;
  final double radius;
  final Color? imageColor;
  const CustomAssetImage({
    super.key,
    this.height,
    this.width,
    required this.imageLocation,
    this.fit = BoxFit.fill,
    this.color = AppColors.transparent,
    this.radius = 0,
    this.imageColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(radius)),
      ),
      clipBehavior: Clip.antiAlias,
      child: imageLocation.isNotEmpty
          ? Image.asset(
              imageLocation,
              fit: fit,
              color: imageColor,
              height: height,
              width: width,
              errorBuilder: (context, error, stackTrace) => const Icon(
                Icons.error,
                color: AppColors.black,
              ),
            )
          : const Center(
              child: Icon(
                Icons.error,
                color: AppColors.black,
              ),
            ),
    );
  }
}
