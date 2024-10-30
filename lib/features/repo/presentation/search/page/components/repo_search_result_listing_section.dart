import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../../core/constants/app_constants.dart';
import '../../../../../../core/constants/text_styles.dart';
import '../../../../../../core/helpers/num_helper.dart';
import '../../../../../../core/utils/widgets/buttons/custom_icon_button.dart';
import '../../../../../../core/utils/widgets/buttons/custom_pop_up_menu_button.dart';
import '../../../../../../core/utils/widgets/empty/custom_empty_widget.dart';
import '../../../../../../core/utils/widgets/list_view/custom_list_view.dart';
import '../../../../../../core/utils/widgets/pagination/custom_paginator.dart';
import '../../../../data/model/repo/details/repo_details_model.dart';
import '../../bloc/repo_search_bloc.dart';
import 'repo_search_sort_bottom_sheet.dart';
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
          perPage: state.perPage,
          search: search,
          sortBy: state.sortBy,
          orderBy: state.orderBy,
        ),
        AppConstants.mediumHeight,
        _ListingSection(
          results: state.results,
        ),
        if (state.results.isNotEmpty) ...[
          AppConstants.largeHeight,
          Skeleton.keep(
            child: CustomPaginator(
              currentPage: state.page,
              itemsPerPage: state.perPage,
              totalItems: state.totalResults,
              onNext: () => _fetchNextPage(context),
              onPrevious: () => _fetchPreviousPage(context),
            ),
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
  final int perPage;
  final String sortBy;
  final String orderBy;
  final TextEditingController search;
  const _TitleSection({
    required this.totalResults,
    required this.perPage,
    required this.search,
    required this.sortBy,
    required this.orderBy,
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
        AppConstants.smallWidth,
        _PerPageComponent(
          perPage: perPage,
          search: search,
        ),
        AppConstants.smallWidth,
        _FilterButton(
          sortBy: sortBy,
          orderBy: orderBy,
          search: search,
        ),
      ],
    );
  }
}

class _PerPageComponent extends StatelessWidget {
  final int perPage;
  final TextEditingController search;
  const _PerPageComponent({
    required this.perPage,
    required this.search,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPopUpMenuButton(
      itemBuilder: (context) => [
        customPopUpMenuItem(value: 10, title: '10'),
        customPopUpMenuItem(value: 25, title: '25'),
        customPopUpMenuItem(value: 50, title: '50'),
      ],
      onSelected: (value) => _updatePerPage(context, value: value),
      tooltip: 'Select Page Size',
      child: Text(
        '$perPage Per Page',
        style: TextStyles.regular12.copyWith(
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }

  void _updatePerPage(BuildContext context, {required dynamic value}) {
    final bloc = context.read<RepoSearchBloc>();
    bloc.add(RepoSearchPerPageChanged(perPage: value as int));
    bloc.add(
      RepoSearchRequested(
        isReload: true,
        keyword: search.text,
      ),
    );
  }
}

class _FilterButton extends StatelessWidget {
  final String sortBy;
  final String orderBy;
  final TextEditingController search;

  const _FilterButton({
    required this.sortBy,
    required this.orderBy,
    required this.search,
  });

  @override
  Widget build(BuildContext context) {
    return Skeleton.unite(
      child: CustomIconButton(
        onTap: () => _showFilterSheet(context),
        icon: Icons.sort_outlined,
        iconSize: AppConstants.iconSize,
        radius: 0,
      ),
    );
  }

  void _showFilterSheet(BuildContext context) async {
    final filters = await showRepoSearchSortBottomSheet(
      context,
      sortBy: sortBy,
      orderBy: orderBy,
    );
    bool doFetchData = false;
    if (context.mounted) {
      final bloc = context.read<RepoSearchBloc>();
      if (sortBy != filters[0]) {
        doFetchData = true;
        bloc.add(RepoSearchSortByChanged(sortBy: filters[0]));
      }
      if (orderBy != filters[1]) {
        doFetchData = true;
        bloc.add(RepoSearchOrderByChanged(orderBy: filters[1]));
      }
      if (doFetchData) {
        bloc.add(
          RepoSearchRequested(
            isReload: true,
            keyword: search.text,
          ),
        );
      }
    }
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
