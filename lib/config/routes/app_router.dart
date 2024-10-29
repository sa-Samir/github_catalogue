import 'package:flutter/material.dart';

import '../../features/repo/presentation/page/repo_search_screen.dart';
import '../../features/splash/presentation/page/splash_screen.dart';
import 'app_routes.dart';

class AppRouter {
  static Route? onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );

      case AppRoutes.search:
        return MaterialPageRoute(
          builder: (_) => const RepoSearchScreen(),
        );
    }
    return null;
  }
}
