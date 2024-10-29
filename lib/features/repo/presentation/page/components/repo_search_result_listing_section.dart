import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/constants/text_styles.dart';
import '../../../../../core/helpers/num_helper.dart';
import '../../../../../core/utils/widgets/empty/custom_empty_widget.dart';
import '../../../../../core/utils/widgets/list_view/custom_list_view.dart';
import '../../../../../core/utils/widgets/pagination/custom_paginator.dart';
import '../../../data/model/repo/details/repo_details_model.dart';
import '../../bloc/repo_search_bloc.dart';
import 'widget/repo_card.dart';

class RepoSearchResultListingSection extends StatelessWidget {
  final RepoSearchState state;
  final TextEditingController search;
  const RepoSearchResultListingSection({
    super.key,
    required this.state,
    required this.search,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _TitleSection(
          totalResults: state.totalResults,
        ),
        AppConstants.mediumHeight,
        _ListingSection(
          results: state.results,
        ),
        if (state.results.isNotEmpty) ...[
          AppConstants.largeHeight,
          CustomPaginator(
            currentPage: state.page,
            itemsPerPage: state.perPage,
            totalItems: state.totalResults,
            onNext: () => _fetchNextPage(context),
            onPrevious: () => _fetchPreviousPage(context),
          ),
        ],
      ],
    );
  }

  void _fetchNextPage(BuildContext context) {
    context
        .read<RepoSearchBloc>()
        .add(RepoSearchRequested(keyword: search.text));
  }

  void _fetchPreviousPage(BuildContext context) {
    context
        .read<RepoSearchBloc>()
        .add(RepoSearchRequested(showPrevious: true, keyword: search.text));
  }
}

class _TitleSection extends StatelessWidget {
  final int? totalResults;
  const _TitleSection({
    required this.totalResults,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            '${NumHelper.getShortForm(totalResults)} Results',
            style: TextStyles.regular15,
          ),
        ),
      ],
    );
  }
}

class _ListingSection extends StatelessWidget {
  final List<RepoDetailsModel?> results;
  const _ListingSection({required this.results});

  @override
  Widget build(BuildContext context) {
    return CustomListView(
      items: results,
      itemBuilder: (context, index) => RepoCard(
        repo: results[index],
      ),
      emptyWidget: const CustomEmptyWidget(
        isInfo: true,
        msg: 'No results found',
      ),
      separator: AppConstants.mediumHeight,
    );
  }
}
