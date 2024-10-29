import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/infrastructure/resource/service_locator.dart';
import '../../features/repo/data/repository/repo_repository.dart';
import '../../features/repo/presentation/bloc/repo_search_bloc.dart';
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
          builder: (_) => BlocProvider(
            create: (context) => RepoSearchBloc(sl<RepoRepository>()),
            child: const RepoSearchScreen(),
          ),
        );
    }
    return null;
  }
}
