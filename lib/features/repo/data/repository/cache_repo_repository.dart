import 'dart:convert';

import '../../../../core/infrastructure/data/data_state.dart';
import '../../presentation/search/bloc/repo_search_bloc.dart';
import '../data_source/local/repo_storage.dart';

class CacheRepoRepository {
  final RepoStorage _repoStorage;
  CacheRepoRepository(this._repoStorage);

  void cacheRepos({String? jsonString}) {
    if (jsonString?.isNotEmpty ?? false) {
      _repoStorage.storeData(jsonString: jsonString!);
    }
  }

  Future<DataState> fetchRepos() async {
    final storedJson = await _repoStorage.fetchData();
    if (storedJson != null) {
      final stateFromJson = RepoSearchState.fromJson(json.decode(storedJson));
      return DataSuccess(stateFromJson);
    }
    return const DataFailure(null);
  }
}
