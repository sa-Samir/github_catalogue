import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../network/connection/connection_cubit.dart';
import '../network/dio_client.dart';

final sl = GetIt.instance;

void initializeDependencies() {
  sl.registerSingleton(Connectivity());
  sl.registerSingleton(ConnectionCubit(sl<Connectivity>()));

  sl.registerSingleton(Dio());
  sl.registerSingleton(DioClient(sl<Dio>(), sl<ConnectionCubit>()));
}
