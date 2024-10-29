import 'package:flutter/material.dart';

import '../../../../core/constants/app_constants.dart';
import 'components/repo_search_input_section.dart';

class RepoSearchBody extends StatelessWidget {
  const RepoSearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: AppConstants.scrollPhysics,
      padding: EdgeInsets.all(AppConstants.screenPadding),
      child: Column(
        children: [
          RepoSearchInputSection(),
        ],
      ),
    );
  }
}
