import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/infrastructure/resource/service_locator.dart';
import '../../features/repo/data/model/repo/details/repo_details_model.dart';
import '../../features/repo/data/repository/repo_repository.dart';
import '../../features/repo/presentation/detail/cubit/repo_detail_cubit.dart';
import '../../features/repo/presentation/detail/page/repo_detail_screen.dart';
import '../../features/repo/presentation/search/bloc/repo_search_bloc.dart';
import '../../features/repo/presentation/search/page/repo_search_screen.dart';
import '../../features/splash/presentation/page/splash_screen.dart';
import 'app_routes.dart';

class AppRouter {
  static Route? onGenerateRoutes(RouteSettings settings) {
    final arguments = settings.arguments;
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

      case AppRoutes.repository:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => RepoDetailCubit(sl<RepoRepository>()),
            child: RepoDetailScreen(
              repo: arguments as RepoDetailsModel?,
            ),
          ),
        );
    }
    return null;
  }
}
