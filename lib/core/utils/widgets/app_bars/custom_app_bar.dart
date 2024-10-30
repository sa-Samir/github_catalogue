import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_constants.dart';
import '../buttons/custom_icon_button.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
      ),
      centerTitle: true,
      systemOverlayStyle: AppConstants.systemOverlay,
      leading: Navigator.of(context).canPop()
          ? CustomIconButton(
              backgroundColor: AppColors.transparent,
              icon: Icons.arrow_back_ios_new,
              onTap: () => Navigator.pop(context),
            )
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
