import 'package:flutter/material.dart';

import '../../../../../../core/constants/app_colors.dart';
import '../../../../../../core/constants/app_constants.dart';
import '../../../../../../core/constants/text_styles.dart';
import '../../../../../../core/helpers/date_format_helper.dart';
import '../../../../../../core/helpers/extensions.dart';
import '../../../../../../core/helpers/num_helper.dart';
import '../../../../../../core/utils/widgets/images/custom_small_avatar.dart';
import '../../../../data/model/repo/details/repo_details_model.dart';

class RepoCard extends StatelessWidget {
  final RepoDetailsModel? repo;
  const RepoCard({
    super.key,
    required this.repo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConstants.screenPadding,
        vertical: AppConstants.screenPadding * .5,
      ),
      decoration: BoxDecoration(
        color: AppColors.bgGrey,
        borderRadius: const BorderRadius.all(
          Radius.circular(AppConstants.smallBorderRadius),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _TitleSection(
                  repo: repo,
                ),
                AppConstants.verySmallHeight,
                _OwnerSection(
                  owner: repo?.owner,
                ),
                if (repo?.description?.isNotEmpty ?? false) ...[
                  AppConstants.verySmallHeight,
                  Text(
                    repo?.description ?? '',
                    style: TextStyles.regular12
                        .copyWith(color: AppColors.secondaryText),
                    maxLines: 2,
                    overflow: AppConstants.textOverflow,
                  ),
                ],
                AppConstants.verySmallHeight,
                _StarDateSection(
                  repo: repo,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _TitleSection extends StatelessWidget {
  final RepoDetailsModel? repo;
  const _TitleSection({
    required this.repo,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            repo?.name ?? '',
            style: TextStyles.medium14,
          ),
        ),
        AppConstants.smallWidth,
        _IconValue(
          icon: Icons.visibility_outlined,
          value: repo?.watchersCount,
        ),
        AppConstants.smallWidth,
        _IconValue(
          icon: Icons.fork_left_outlined,
          value: repo?.watchersCount,
        ),
      ],
    );
  }
}

class _OwnerSection extends StatelessWidget {
  final RepoOwnerModel? owner;
  const _OwnerSection({required this.owner});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomSmallAvatar(
          imageUrl: owner?.avatarUrl,
        ),
        AppConstants.smallWidth,
        Expanded(
          child: Text(
            owner?.login ?? '',
            style: TextStyles.regular12,
          ),
        ),
      ],
    );
  }
}

class _StarDateSection extends StatelessWidget {
  final RepoDetailsModel? repo;
  const _StarDateSection({
    required this.repo,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _IconValue(
          icon: Icons.star_border_rounded,
          value: repo?.stargazersCount,
        ),
        AppConstants.verySmallWidth,
        const Text('·'),
        AppConstants.verySmallWidth,
        Expanded(
          child: Text(
            'Updated on ${DateFormatHelper.formatDMy(repo?.updatedAt)}',
            style: TextStyles.light12,
          ),
        ),
      ],
    );
  }
}

class _IconValue extends StatelessWidget {
  final IconData icon;
  final int? value;
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
          NumHelper.getShortForm(value),
          style: TextStyles.light12,
        ),
      ],
    );
  }
}
