import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../../core/constants/app_constants.dart';
import '../../../../../../core/constants/text_styles.dart';

class RepoDetailReadmeSkeleton extends StatelessWidget {
  const RepoDetailReadmeSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'README.md',
            style: TextStyles.regular17,
          ),
          AppConstants.mediumHeight,
          Text(
            BoneMock.longParagraph,
          ),
        ],
      ),
    );
  }
}
