import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';

import '../network/connection/connection_cubit.dart';

final sl = GetIt.instance;

void initializeDependencies() {
  sl.registerSingleton(Connectivity());
  sl.registerSingleton(ConnectionCubit(sl<Connectivity>()));
}
