part of 'repo_search_bloc.dart';

@immutable
sealed class RepoSearchEvent {}

final class RepoSearchRequested extends RepoSearchEvent {
  final bool showPrevious;
  final String keyword;
  RepoSearchRequested({
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
