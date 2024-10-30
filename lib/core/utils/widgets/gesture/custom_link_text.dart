import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/text_styles.dart';
import '../../toasts/custom_toasts.dart';
import 'custom_ink_well.dart';

class CustomLinkText extends StatelessWidget {
  final String? targetUrl;
  final String? title;
  const CustomLinkText({
    super.key,
    required this.targetUrl,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return CustomInkWell(
      onTap: _launchUrl,
      child: Text(
        title ?? targetUrl ?? '',
        style: TextStyles.regularItalic12.copyWith(
          color: AppColors.secondary,
        ),
      ),
    );
  }

  void _launchUrl() async {
    final uri = Uri.parse(targetUrl ?? '');
    if (await canLaunchUrl(uri)) {
      launchUrl(uri);
    } else {
      failureToast('Failed to launch $targetUrl');
    }
  }
}
