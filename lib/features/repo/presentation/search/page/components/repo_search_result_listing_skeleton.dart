import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../data/model/repo/details/repo_details_model.dart';
import '../../bloc/repo_search_bloc.dart';
import 'repo_search_result_listing_section.dart';

class RepoSearchResultListingSkeleton extends StatelessWidget {
  final RepoSearchState state;
  const RepoSearchResultListingSkeleton({super.key, required this.state});

  static final _results = List.generate(
    10,
    (index) => RepoDetailsModel(
      name: BoneMock.title,
      defaultBranch: BoneMock.subtitle,
      description: BoneMock.paragraph,
      forksCount: 12,
      openIssuesCount: 8,
      htmlUrl: BoneMock.email,
      owner: RepoOwnerModel(
        login: BoneMock.fullName,
        htmlUrl: BoneMock.email,
      ),
      stargazersCount: 456,
      watchersCount: 789,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: RepoSearchResultListingSection(
        state: RepoSearchState.initial().copyWith(
          results: _results,
          page: state.page,
          totalResults: state.totalResults,
        ),
      ),
    );
  }
}
