import 'package:flutter/material.dart';

import '../../../../core/utils/widgets/app_bars/custom_app_bar.dart';
import '../../../../core/utils/widgets/gesture/custom_gesture_detector.dart';
import 'home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomGestureDetector(
      child: Scaffold(
        appBar: CustomAppBar(title: 'Home'),
        body: SafeArea(
          child: HomeBody(),
        ),
      ),
    );
  }
}
