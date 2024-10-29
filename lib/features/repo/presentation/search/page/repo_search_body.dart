import 'package:flutter/material.dart';

import '../../../../../core/constants/app_constants.dart';
import 'components/repo_search_input_section.dart';
import 'components/repo_search_result_section.dart';

class RepoSearchBody extends StatefulWidget {
  const RepoSearchBody({super.key});

  @override
  State<RepoSearchBody> createState() => _RepoSearchBodyState();
}

class _RepoSearchBodyState extends State<RepoSearchBody> {
  final _search = TextEditingController();

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
    );
  }
}
