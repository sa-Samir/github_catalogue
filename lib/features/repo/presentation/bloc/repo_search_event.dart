part of 'repo_search_bloc.dart';

@immutable
sealed class RepoSearchEvent {}

final class RepoSearchRequested extends RepoSearchEvent {
  final bool isReload;
  final String keyword;
  final bool showPrevious;
  RepoSearchRequested({
    this.isReload = false,
    this.showPrevious = false,
    required this.keyword,
  });
}

final class RepoSearchPerPageChanged extends RepoSearchEvent {
  final int perPage;
  RepoSearchPerPageChanged({
    required this.perPage,
  });
}
