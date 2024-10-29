import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_colors.dart';

class AppConstants {
  // ** Text
  static const appName = 'Github Catalogue';

  // ** Dimensions
  static const screenPadding = 20.0;

  static const borderRadius = 10.0;
  static const smallBorderRadius = 5.0;

  static const iconSize = 20.0;
  static const smallIconSize = 15.0;

  static const largeLogoSize = 90.0;
  static const mediumLogoSize = 45.0;

  static const smallAvatarSize = 20.0;

  static const btnHeight = 40.0;

  // ** Sized boxes
  static const largeHeight = SizedBox(
    height: 20,
  );
  static const mediumHeight = SizedBox(
    height: 15,
  );
  static const smallHeight = SizedBox(
    height: 10,
  );
  static const verySmallHeight = SizedBox(
    height: 5,
  );

  static const largewidth = SizedBox(
    width: 20,
  );
  static const mediumWidth = SizedBox(
    width: 15,
  );
  static const smallWidth = SizedBox(
    width: 10,
  );
  static const verySmallWidth = SizedBox(
    width: 5,
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

  static const defaultResultsPerPage = 10;

  static const textOverflow = TextOverflow.ellipsis;
}
