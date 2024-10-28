import 'package:fluttertoast/fluttertoast.dart';

import '../../constants/app_colors.dart';

void successToast(
  String? msg, {
  ToastGravity? gravity,
  bool cancelPrevious = true,
}) {
  if (cancelPrevious) Fluttertoast.cancel();
  if (msg?.isNotEmpty ?? false) {
    Fluttertoast.showToast(
      msg: msg ?? '',
      textColor: AppColors.success,
      backgroundColor: AppColors.white,
      gravity: gravity ?? ToastGravity.BOTTOM,
    );
  }
}

void failureToast(
  String? msg, {
  ToastGravity? gravity,
  bool cancelPrevious = true,
}) {
  if (cancelPrevious) Fluttertoast.cancel();
  if (msg?.isNotEmpty ?? false) {
    Fluttertoast.showToast(
      msg: ((msg?.isEmpty ?? true) || msg == 'null')
          ? 'Sorry, Something Went Wrong!'
          : msg!,
      textColor: AppColors.danger,
      backgroundColor: AppColors.white,
      gravity: gravity ?? ToastGravity.BOTTOM,
    );
  }
}
