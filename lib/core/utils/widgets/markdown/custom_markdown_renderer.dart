import 'package:flutter/widgets.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../toasts/custom_toasts.dart';
import '../images/custom_network_image.dart';

class CustomMarkdownRenderer extends StatelessWidget {
  final String? data;
  const CustomMarkdownRenderer({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return MarkdownBody(
      data: data ?? '',
      imageBuilder: (uri, title, alt) => CustomNetworkImage(
        imageUrl: uri.toString(),
      ),
      onTapLink: (text, href, title) => _launchUrl(href),
    );
  }

  void _launchUrl(String? url) async {
    final uri = Uri.parse(url ?? '');
    if (await canLaunchUrl(uri)) {
      launchUrl(uri);
    } else {
      failureToast('Failed to launch $url');
    }
  }
}
