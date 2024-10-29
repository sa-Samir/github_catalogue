import 'package:flutter/material.dart';

import '../../../constants/app_constants.dart';
import 'custom_network_image.dart';

class CustomSmallAvatar extends StatelessWidget {
  final String? imageUrl;
  const CustomSmallAvatar({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return CustomNetworkImage(
      imageUrl: imageUrl,
      height: AppConstants.smallAvatarSize,
      width: AppConstants.smallAvatarSize,
      radius: AppConstants.smallAvatarSize,
    );
  }
}
