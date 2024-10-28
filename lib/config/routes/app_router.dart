import 'package:flutter/material.dart';

import '../../features/home/presentation/page/home_screen.dart';
import '../../features/splash/presentation/page/splash_screen.dart';
import 'app_routes.dart';

class AppRouter {
  static Route? onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );

      case AppRoutes.home:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
    }
    return null;
  }
}
