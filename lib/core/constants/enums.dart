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
  bestMatch('Best Match', 'best match'),
  stars('Stars', 'stars'),
  forks('Forks', 'forks'),
  helpWantedIssues('Help Wanted Issues', 'help-wanted-issues'),
  updated('Updated', 'updated');

  const SortBy(this.name, this.value);
  final String value;
  final String name;
}

enum OrderBy {
  desc('Descending', 'desc'),
  asc('Ascending', 'asc');

  const OrderBy(this.name, this.value);
  final String value;
  final String name;
}
