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
  }) async {
    final searchUrl =
        '${RepoUrls.search}?q=$keyword&page=$page&per_page=$perPage';
    final response = await _dioClient.get(searchUrl);
    return response;
  }
}
