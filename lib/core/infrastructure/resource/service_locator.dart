import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../features/repo/data/data_source/local/repo_storage.dart';
import '../../../features/repo/data/repository/cache_repo_repository.dart';
import '../../../features/repo/data/repository/repo_repository.dart';
import '../network/connection/connection_cubit.dart';
import '../network/dio_client.dart';

final sl = GetIt.instance;

void initializeDependencies() async {
  sl.registerSingleton(Connectivity());
  sl.registerSingleton(ConnectionCubit(sl<Connectivity>()));
  sl.registerSingleton(Dio());
  sl.registerSingleton(DioClient(sl<Dio>(), sl<ConnectionCubit>()));
  final prefrerences = await SharedPreferences.getInstance();
  sl.registerSingleton(prefrerences);
  sl.registerSingleton(RepoStorage(sl<SharedPreferences>()));
  sl.registerSingleton(RepoRepository(sl<DioClient>()));
  sl.registerSingleton(CacheRepoRepository(sl<RepoStorage>()));
}
