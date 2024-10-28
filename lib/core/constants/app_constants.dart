import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_colors.dart';

class AppConstants {
  // ** Text
  static const appName = 'Github Catalogue';

  // ** Dimensions
  static const screenPadding = 20.0;

  static const largeLogoSize = 90.0;
  static const mediumLogoSize = 45.0;

  static const sizedBoxLarge = SizedBox(
    height: 20,
  );
  static const sizedBoxMedium = SizedBox(
    height: 15,
  );

  // ** Misc
  static const systemOverlay = SystemUiOverlayStyle(
    statusBarColor: AppColors.white,
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: AppColors.white,
  );

  static const scrollPhysics = BouncingScrollPhysics();

  static const splashDelay = Duration(seconds: 2);
}
