import 'package:flutter/material.dart';

import '../../../../../core/utils/widgets/app_bars/custom_app_bar.dart';
import '../../../../../core/utils/widgets/gesture/custom_gesture_detector.dart';
import 'repo_search_body.dart';

class RepoSearchScreen extends StatelessWidget {
  const RepoSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomGestureDetector(
      child: Scaffold(
        appBar: CustomAppBar(title: 'Home'),
        body: SafeArea(
          child: RepoSearchBody(),
        ),
      ),
    );
  }
}
