import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/constants/enums.dart';
import '../../../../../core/utils/toasts/custom_toasts.dart';
import '../bloc/repo_search_bloc.dart';
import 'components/repo_search_input_section.dart';
import 'components/repo_search_result_section.dart';

class RepoSearchBody extends StatefulWidget {
  const RepoSearchBody({super.key});

  @override
  State<RepoSearchBody> createState() => _RepoSearchBodyState();
}

class _RepoSearchBodyState extends State<RepoSearchBody> {
  final _search = TextEditingController();
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _search.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<RepoSearchBloc, RepoSearchState>(
      listener: _handleStates,
      child: SingleChildScrollView(
        controller: _scrollController,
        physics: AppConstants.scrollPhysics,
        padding: const EdgeInsets.all(AppConstants.screenPadding),
        child: Column(
          children: [
            RepoSearchInputSection(
              search: _search,
            ),
            AppConstants.largeHeight,
            RepoSearchResultSection(
              search: _search,
            ),
          ],
        ),
      ),
    );
  }

  void _handleStates(BuildContext context, RepoSearchState state) {
    if (state.status == Status.failure && state.errorMessage.isNotEmpty) {
      failureToast(state.errorMessage);
    }
  }
}
