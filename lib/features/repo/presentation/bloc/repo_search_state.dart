part of 'repo_search_bloc.dart';

class RepoSearchState {
  final Status status;
  final String errorMessage;
  final int page;
  final int perPage;
  final String sortBy;
  final String orderBy;
  final int totalResults;
  final List<RepoDetailsModel?> results;

  RepoSearchState({
    required this.status,
    required this.errorMessage,
    required this.page,
    required this.perPage,
    required this.sortBy,
    required this.orderBy,
    required this.totalResults,
    required this.results,
  });

  RepoSearchState.initial()
      : status = Status.initial,
        errorMessage = '',
        page = 0,
        sortBy = SortBy.bestMatch.value,
        orderBy = OrderBy.desc.value,
        perPage = AppConstants.defaultResultsPerPage,
        totalResults = 0,
        results = [];

  RepoSearchState copyWith({
    Status? status,
    String? errorMessage,
    int? page,
    int? perPage,
    int? totalResults,
    String? sortBy,
    String? orderBy,
    List<RepoDetailsModel?>? results,
  }) =>
      RepoSearchState(
        status: status ?? this.status,
        errorMessage: errorMessage ?? this.errorMessage,
        page: page ?? this.page,
        perPage: perPage ?? this.perPage,
        totalResults: totalResults ?? this.totalResults,
        sortBy: sortBy ?? this.sortBy,
        orderBy: orderBy ?? this.orderBy,
        results: results ?? this.results,
      );
}
