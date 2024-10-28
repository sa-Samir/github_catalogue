import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../config/themes/app_themes.dart';
import '../core/constants/app_constants.dart';

import '../config/routes/app_router.dart';
import '../core/constants/enums.dart';
import '../core/infrastructure/network/connection/connection_cubit.dart';
import '../core/infrastructure/resource/service_locator.dart';
import '../core/utils/toasts/custom_toasts.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ConnectionCubit>(),
      child: BlocListener<ConnectionCubit, ConnectionStatus>(
        listenWhen: (previous, current) => previous != current,
        listener: _handleConnectionStateChanges,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: AppConstants.appName,
          theme: AppThemes.lightTheme,
          onGenerateRoute: AppRouter.onGenerateRoutes,
        ),
      ),
    );
  }

  void _handleConnectionStateChanges(
    BuildContext context,
    ConnectionStatus state,
  ) =>
      switch (state) {
        ConnectionStatus.connected =>
          successToast('Internet Connection Restored!!!'),
        ConnectionStatus.disconnected =>
          failureToast('Internet Disconnected!!!')
      };
}
