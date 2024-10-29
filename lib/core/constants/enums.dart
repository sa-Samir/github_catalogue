enum ConnectionStatus {
  connected,
  disconnected,
}

enum Status {
  initial,
  loading,
  success,
  failure,
  paginationLoading,
}

enum SortBy {
  bestMatch('best_match'),
  authorDate('author-date'),
  comitterDate('committer-date ');

  const SortBy(this.value);
  final String value;
}

enum OrderBy {
  asc('asc'),
  desc('desc');

  const OrderBy(this.value);
  final String value;
}
