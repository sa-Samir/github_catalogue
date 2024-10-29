import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_constants.dart';

class CustomCircularLoader extends StatelessWidget {
  final double size;
  final Color color;
  const CustomCircularLoader({
    super.key,
    this.size = AppConstants.btnHeight,
    this.color = AppColors.secondary,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: SizedBox(
              height: size,
              width: size,
              child: Center(
                child: CircularProgressIndicator.adaptive(
                  valueColor: AlwaysStoppedAnimation(color),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
