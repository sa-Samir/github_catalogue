import 'package:flutter/material.dart';

import '../../../constants/app_constants.dart';

class CustomNoAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomNoAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: AppConstants.systemOverlay,
    );
  }

  @override
  Size get preferredSize => Size.zero;
}
