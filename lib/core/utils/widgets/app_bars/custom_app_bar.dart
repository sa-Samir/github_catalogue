import 'package:flutter/material.dart';

import '../../../constants/app_constants.dart';

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
      systemOverlayStyle: AppConstants.systemOverlay,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
