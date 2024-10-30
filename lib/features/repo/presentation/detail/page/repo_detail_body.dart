import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_constants.dart';

import '../../../../../core/constants/text_styles.dart';
import '../../../../../core/helpers/extensions.dart';
import '../../../../../core/utils/widgets/gesture/custom_link_text.dart';
import '../../../../../core/utils/widgets/images/custom_small_avatar.dart';
import '../../../../../core/utils/widgets/refresher/custom_refresher.dart';
import '../../../data/model/repo/details/repo_details_model.dart';
import '../cubit/repo_detail_cubit.dart';
import 'components/repo_detail_readme_section.dart';

class RepoDetailBody extends StatefulWidget {
  final RepoDetailsModel? repo;
  const RepoDetailBody({
    super.key,
    required this.repo,
  });

  @override
  State<RepoDetailBody> createState() => _RepoDetailBodyState();
}

class _RepoDetailBodyState extends State<RepoDetailBody> {
  RepoDetailsModel? get _repo => widget.repo;

  @override
  void initState() {
    _fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomRefresher(
      onRefresh: _fetchData,
      padding: const EdgeInsets.all(AppConstants.screenPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _RepoInfoSection(
            repo: _repo,
          ),
          AppConstants.largeHeight,
          RepoDetailReadmeSection(
            repo: _repo,
          ),
        ],
      ),
    );
  }

  void _fetchData() {
    context.read<RepoDetailCubit>().fetchReadme(
          ownerLogin: _repo?.owner?.login,
          repositoryName: _repo?.name,
        );
  }
}

class _RepoInfoSection extends StatelessWidget {
  final RepoDetailsModel? repo;
  const _RepoInfoSection({
    required this.repo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConstants.screenPadding * .5,
        vertical: AppConstants.screenPadding * .25,
      ),
      decoration: BoxDecoration(
        color: AppColors.inputBgGrey,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _RepoDetailsSection(
            repo: repo,
          ),
          Divider(
            color: AppColors.inputGrey,
          ),
          _RepoOwnerSection(
            owner: repo?.owner,
          ),
        ],
      ),
    );
  }
}

class _RepoDetailsSection extends StatelessWidget {
  final RepoDetailsModel? repo;
  const _RepoDetailsSection({
    required this.repo,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          repo?.name ?? '',
          style: TextStyles.medium17,
        ),
        CustomLinkText(
          targetUrl: repo?.htmlUrl?.toString(),
        ),
        AppConstants.smallHeight,
        Row(
          children: [
            Expanded(
              child: _IconValue(
                icon: Icons.bug_report_outlined,
                value: '${repo?.openIssuesCount} Issues Open',
              ),
            ),
            AppConstants.mediumWidth,
            _BranchContainer(
              defaultBranch: repo?.defaultBranch,
            ),
          ],
        ),
      ],
    );
  }
}

class _IconValue extends StatelessWidget {
  final IconData icon;
  final String value;
  const _IconValue({required this.icon, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: AppConstants.smallIconSize,
        ),
        2.width,
        Text(
          value,
          style: TextStyles.regular12,
        ),
      ],
    );
  }
}

class _BranchContainer extends StatelessWidget {
  final String? defaultBranch;
  const _BranchContainer({required this.defaultBranch});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConstants.screenPadding * .25,
        vertical: 2,
      ),
      decoration: BoxDecoration(
        color: AppColors.inputBgGrey,
      ),
      child: _IconValue(
        icon: Icons.fork_right_outlined,
        value: defaultBranch ?? '',
      ),
    );
  }
}

class _RepoOwnerSection extends StatelessWidget {
  final RepoOwnerModel? owner;
  const _RepoOwnerSection({
    required this.owner,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Authored By',
          style: TextStyles.regular12,
        ),
        Row(
          children: [
            CustomSmallAvatar(
              imageUrl: owner?.avatarUrl,
            ),
            AppConstants.mediumWidth,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    owner?.login ?? '',
                    style: TextStyles.regular15,
                  ),
                  CustomLinkText(
                    targetUrl: owner?.htmlUrl?.toString(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
