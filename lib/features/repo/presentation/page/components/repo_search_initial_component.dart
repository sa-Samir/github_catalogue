import 'package:flutter/material.dart';

import '../../../../../core/assets/image_assets.dart';
import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/constants/text_styles.dart';
import '../../../../../core/utils/widgets/images/custom_asset_image.dart';

class RepoSearchInitialComponent extends StatelessWidget {
  const RepoSearchInitialComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAssetImage(
          imageLocation: ImageAssets.github,
          height: AppConstants.mediumLogoSize,
          width: AppConstants.mediumLogoSize,
        ),
        AppConstants.mediumHeight,
        Text(
          'Welcome to the Github Catalogue.\nSearch the hub for the repository you\'re looking for',
          style: TextStyles.regular12,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
