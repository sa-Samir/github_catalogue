import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/constants/enums.dart';
import '../../../../../core/infrastructure/data/data_state.dart';
import '../../../data/model/repo/details/repo_details_model.dart';
import '../../../data/model/repo/listing/repo_listing_model.dart';
import '../../../data/repository/repo_repository.dart';

part 'repo_search_event.dart';
part 'repo_search_state.dart';

class RepoSearchBloc extends Bloc<RepoSearchEvent, RepoSearchState> {
  final RepoRepository _repoRepository;
  RepoSearchBloc(this._repoRepository) : super(RepoSearchState.initial()) {
    on<RepoSearchRequested>(_onRepoSearchRequested);
    on<RepoSearchPerPageChanged>(_onRepoSearchPerPageChanged);
    on<RepoSearchSortByChanged>(_onRepoSearchSortByChanged);
    on<RepoSearchOrderByChanged>(_onRepoSearchOrderByChanged);
  }

  void _onRepoSearchRequested(
    RepoSearchRequested event,
    Emitter<RepoSearchState> emit,
  ) async {
    emit(
      state.copyWith(
        status: Status.loading,
        errorMessage: '',
        page: event.isReload ? 0 : null,
      ),
    );
    final response = await _repoRepository.search(
      keyword: event.keyword,
      page: event.showPrevious ? (state.page - 1) : (state.page + 1),
      perPage: state.perPage,
      sortBy: state.sortBy,
      orderBy: state.orderBy,
    );
    if (response is DataSuccess) {
      final repos =
          await compute(repoListingModelFromJson, response.data as String?);
      emit(
        state.copyWith(
          status: Status.success,
          page: event.showPrevious ? (state.page - 1) : (state.page + 1),
          totalResults: repos.totalCount,
          results: repos.items,
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

  void _onRepoSearchPerPageChanged(
    RepoSearchPerPageChanged event,
    Emitter<RepoSearchState> emit,
  ) {
    emit(state.copyWith(perPage: event.perPage));
  }

  void _onRepoSearchSortByChanged(
    RepoSearchSortByChanged event,
    Emitter<RepoSearchState> emit,
  ) {
    emit(state.copyWith(sortBy: event.sortBy));
  }

  void _onRepoSearchOrderByChanged(
    RepoSearchOrderByChanged event,
    Emitter<RepoSearchState> emit,
  ) {
    emit(state.copyWith(orderBy: event.orderBy));
  }
}
