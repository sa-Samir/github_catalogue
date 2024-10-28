import 'package:flutter/material.dart';
import '../../../../core/utils/widgets/app_bars/custom_no_app_bar.dart';
import 'splash_body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomNoAppBar(),
      body: SafeArea(
        child: SplashBody(),
      ),
    );
  }
}
