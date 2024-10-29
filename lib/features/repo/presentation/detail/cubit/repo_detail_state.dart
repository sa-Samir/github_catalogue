part of 'repo_detail_cubit.dart';

class RepoDetailState {
  final Status status;
  final String readmeData;
  final String errorMessage;

  RepoDetailState({
    required this.status,
    required this.readmeData,
    required this.errorMessage,
  });

  RepoDetailState.initial()
      : status = Status.initial,
        readmeData = '',
        errorMessage = '';

  RepoDetailState copyWith({
    Status? status,
    String? readmeData,
    String? errorMessage,
  }) =>
      RepoDetailState(
        status: status ?? this.status,
        readmeData: readmeData ?? this.readmeData,
        errorMessage: errorMessage ?? this.errorMessage,
      );
}
