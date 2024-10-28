import 'package:flutter/material.dart';

import '../../../../../core/assets/image_assets.dart';
import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/utils/widgets/images/custom_asset_image.dart';

class HomeSearchInputSection extends StatelessWidget {
  const HomeSearchInputSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        _LogoComponent(),
        AppConstants.sizedBoxMedium,
      ],
    );
  }
}

class _LogoComponent extends StatelessWidget {
  const _LogoComponent();

  @override
  Widget build(BuildContext context) {
    return const Align(
      child: CustomAssetImage(
        imageLocation: ImageAssets.github,
        height: AppConstants.mediumLogoSize,
        width: AppConstants.mediumLogoSize,
      ),
    );
  }
}
