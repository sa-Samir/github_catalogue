import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/constants/enums.dart';
import '../../../../../../core/utils/widgets/empty/custom_empty_widget.dart';
import '../../bloc/repo_search_bloc.dart';
import 'repo_search_initial_component.dart';
import 'repo_search_result_listing_section.dart';
import 'repo_search_result_listing_skeleton.dart';

class RepoSearchResultSection extends StatelessWidget {
  const RepoSearchResultSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RepoSearchBloc, RepoSearchState>(
      builder: (context, state) {
        if (state.status == Status.initial) {
          return const RepoSearchInitialComponent();
        }
        if (state.status == Status.loading) {
          return RepoSearchResultListingSkeleton(
            state: state,
          );
        }
        if (_showErrorMessage(state)) {
          return CustomEmptyWidget(
            btnTitle: state.errorMessage,
            onRetry: () => _fetchRepos(context),
          );
        }
        return RepoSearchResultListingSection(
          state: state,
        );
      },
    );
  }

  bool _showErrorMessage(RepoSearchState state) =>
      (state.status == Status.failure || state.errorMessage.isNotEmpty) &&
      state.results.isEmpty;

  void _fetchRepos(BuildContext context) {
    context.read<RepoSearchBloc>().add(RepoSearchRequested());
  }
}
