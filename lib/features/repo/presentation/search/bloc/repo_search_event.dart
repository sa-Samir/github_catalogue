part of 'repo_search_bloc.dart';

@immutable
sealed class RepoSearchEvent {}

final class RepoSearchRequested extends RepoSearchEvent {
  final bool isReload;
  final bool showPrevious;
  RepoSearchRequested({
    this.isReload = false,
    this.showPrevious = false,
  });
}

final class RepoSearchPerPageChanged extends RepoSearchEvent {
  final int perPage;
  RepoSearchPerPageChanged({
    required this.perPage,
  });
}

final class RepoSearchKeywordChanged extends RepoSearchEvent {
  final String keyword;
  RepoSearchKeywordChanged({
    required this.keyword,
  });
}

final class RepoSearchSortByChanged extends RepoSearchEvent {
  final String sortBy;
  RepoSearchSortByChanged({
    required this.sortBy,
  });
}

final class RepoSearchOrderByChanged extends RepoSearchEvent {
  final String orderBy;
  RepoSearchOrderByChanged({
    required this.orderBy,
  });
}

final class RepoSearchCacheFetchRequested extends RepoSearchEvent {
  RepoSearchCacheFetchRequested();
}
