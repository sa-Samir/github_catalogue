import '../../../../core/constants/enums.dart';
import '../../../../core/infrastructure/data/data_state.dart';
import '../../../../core/infrastructure/network/dio_client.dart';
import '../data_source/remote/repo_urls.dart';

class RepoRepository {
  final DioClient _dioClient;
  RepoRepository(this._dioClient);

  Future<DataState> search({
    required String keyword,
    required int page,
    required int perPage,
    required String sortBy,
    required String orderBy,
  }) async {
    // From Github Api Docs
    // https://docs.github.com/en/rest/search/search?apiVersion=2022-11-28#search-code
    final searchUrl =
        '${RepoUrls.search}?q=$keyword&page=$page&per_page=$perPage${sortBy != SortBy.bestMatch.value ? '&sort=$sortBy' : ''}${orderBy != OrderBy.desc.value ? '&order=$orderBy' : ''}';
    final response = await _dioClient.get(searchUrl);
    return response;
  }
}
