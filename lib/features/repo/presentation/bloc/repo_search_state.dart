part of 'repo_search_bloc.dart';

class RepoSearchState {
  final Status status;
  final String errorMessage;
  final int page;
  final int perPage;
  final int totalResults;
  final List<RepoDetailsModel?> results;

  RepoSearchState({
    required this.status,
    required this.errorMessage,
    required this.page,
    required this.perPage,
    required this.totalResults,
    required this.results,
  });

  RepoSearchState.initial()
      : status = Status.initial,
        errorMessage = '',
        page = 0,
        perPage = AppConstants.defaultResultsPerPage,
        totalResults = 0,
        results = [];

  RepoSearchState copyWith({
    Status? status,
    String? errorMessage,
    int? page,
    int? perPage,
    int? totalResults,
    List<RepoDetailsModel?>? results,
  }) =>
      RepoSearchState(
        status: status ?? this.status,
        errorMessage: errorMessage ?? this.errorMessage,
        page: page ?? this.page,
        perPage: perPage ?? this.perPage,
        totalResults: totalResults ?? this.totalResults,
        results: results ?? this.results,
      );
}
