import 'package:flutter/material.dart';

import '../../../../config/routes/app_routes.dart';
import '../../../../core/assets/image_assets.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/constants/text_styles.dart';
import '../../../../core/utils/widgets/images/custom_asset_image.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  void initState() {
    _navigateToHome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomAssetImage(
            imageLocation: ImageAssets.github,
            height: AppConstants.largeLogoSize,
            width: AppConstants.largeLogoSize,
          ),
          AppConstants.sizedBoxLarge,
          Text(
            'Github Catalogue',
            style: TextStyles.regular17,
          ),
        ],
      ),
    );
  }

  void _navigateToHome() {
    Future.delayed(AppConstants.splashDelay, () {
      if (mounted) {
        Navigator.popAndPushNamed(context, AppRoutes.home);
      }
    });
  }
}
