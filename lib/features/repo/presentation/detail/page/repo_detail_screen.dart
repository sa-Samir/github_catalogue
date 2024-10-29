import 'package:flutter/material.dart';

import '../../../../../core/utils/widgets/app_bars/custom_app_bar.dart';
import '../../../data/model/repo/details/repo_details_model.dart';
import 'repo_detail_body.dart';

class RepoDetailScreen extends StatelessWidget {
  final RepoDetailsModel? repo;
  const RepoDetailScreen({
    super.key,
    required this.repo,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Repository Details',
      ),
      body: SafeArea(
        child: RepoDetailBody(
          repo: repo,
        ),
      ),
    );
  }
}
