import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/text_styles.dart';

class CustomInput extends StatelessWidget {
  final String hint;
  final TextEditingController? controller;
  final Widget? suffix;
  final Widget? prefix;
  final Function(String)? onChanged;
  final TextInputAction? textInputAction;
  const CustomInput({
    super.key,
    this.hint = '',
    this.controller,
    this.prefix,
    this.suffix,
    this.onChanged,
    this.textInputAction,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: (value) => onChanged?.call(value),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyles.regular17.copyWith(
          color: AppColors.inputGrey,
        ),
        prefixIcon: prefix,
      ),
      textAlignVertical: TextAlignVertical.center,
      inputFormatters: [
        // ** Restricting Emojis
        FilteringTextInputFormatter.deny(
          RegExp(
            '(\u00a9|\u00ae|[\u2000-\u3300]|\ud83c[\ud000-\udfff]|\ud83d[\ud000-\udfff]|\ud83e[\ud000-\udfff])',
          ),
        ),
      ],
      textInputAction: textInputAction,
      cursorColor: AppColors.secondary,
      style: TextStyles.regular17,
    );
  }
}
