import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/enums.dart';
import '../../../../../core/infrastructure/data/data_state.dart';
import '../../../data/repository/repo_repository.dart';
part 'repo_detail_state.dart';

class RepoDetailCubit extends Cubit<RepoDetailState> {
  final RepoRepository _repoRepository;
  RepoDetailCubit(this._repoRepository) : super(RepoDetailState.initial());

  void fetchReadme({
    required String? ownerLogin,
    required String? repositoryName,
  }) async {
    emit(state.copyWith(status: Status.loading, errorMessage: ''));
    final response = await _repoRepository.fetchRepoReadme(
      ownerLogin: ownerLogin,
      repositoryName: repositoryName,
    );
    if (response is DataSuccess) {
      emit(
        state.copyWith(
          status: Status.success,
          readmeData: response.data as String?,
        ),
      );
    } else {
      emit(
        state.copyWith(
          status: Status.failure,
          errorMessage: response.error?.message,
        ),
      );
    }
  }
}
