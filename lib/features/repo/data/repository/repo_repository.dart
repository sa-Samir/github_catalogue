import '../../../../core/infrastructure/data/data_state.dart';
import '../../../../core/infrastructure/network/dio_client.dart';
import '../data_source/remote/repo_urls.dart';

class RepoRepository {
  final DioClient _dioClient;
  RepoRepository(this._dioClient);

  Future<DataState> search({required String keyword}) async {
    final response = await _dioClient.get('${RepoUrls.search}?q=$keyword');
    return response;
  }
}
