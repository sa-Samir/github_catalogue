import 'package:flutter/material.dart';
import 'package:extended_image/extended_image.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../constants/app_colors.dart';
import '../loader/custom_circular_loader.dart';

class CustomNetworkImage extends StatelessWidget {
  final double? height;
  final double? width;
  final String? imageUrl;
  final BoxFit? fit;
  final Color color;
  final double radius;

  const CustomNetworkImage({
    super.key,
    this.height,
    this.width,
    required this.imageUrl,
    this.fit = BoxFit.cover,
    this.color = AppColors.white,
    this.radius = 5.0,
  });

  @override
  Widget build(BuildContext context) {
    return Skeleton.leaf(
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(radius)),
        ),
        clipBehavior: Clip.antiAlias,
        child: imageUrl != null && imageUrl != ''
            ? ExtendedImage.network(
                imageUrl ?? '',
                fit: fit,
                height: height,
                width: width,
                loadStateChanged: (state) {
                  switch (state.extendedImageLoadState) {
                    case LoadState.loading:
                      return const CustomCircularLoader(
                        size: 15,
                      );
                    case LoadState.failed:
                      return GestureDetector(
                        onTap: () => state.reLoadImage,
                        child: const Center(
                          child: Icon(
                            Icons.error,
                            color: AppColors.secondary,
                          ),
                        ),
                      );
                    case LoadState.completed:
                      return null;
                  }
                },
              )
            : const Center(
                child: Icon(
                  Icons.error,
                  color: AppColors.secondary,
                ),
              ),
      ),
    );
  }
}
