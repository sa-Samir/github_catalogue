import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/constants/app_constants.dart';
import '../../../../../../core/constants/enums.dart';
import '../../../../../../core/constants/text_styles.dart';
import '../../../../../../core/utils/widgets/markdown/custom_markdown_renderer.dart';
import '../../../../data/model/repo/details/repo_details_model.dart';
import '../../cubit/repo_detail_cubit.dart';
import 'repo_detail_readme_skeleton.dart';

class RepoDetailReadmeSection extends StatelessWidget {
  final RepoDetailsModel? repo;
  const RepoDetailReadmeSection({
    super.key,
    required this.repo,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RepoDetailCubit, RepoDetailState>(
      builder: (context, state) {
        if (state.status == Status.loading) {
          return const RepoDetailReadmeSkeleton();
        }
        if (state.readmeData.isNotEmpty) {
          // return CustomEmptyWidget(
          //   msg: state.errorMessage,
          //   onRetry: () => _fetchData(context),
          // );
          return const SizedBox();
        }

        return _ReadmeComponent(
          readmeData: state.readmeData,
        );
      },
    );
  }

  // void _fetchData(BuildContext context) {
  //   context.read<RepoDetailCubit>().fetchReadme(
  //         ownerLogin: repo?.owner?.login,
  //         repositoryName: repo?.name,
  //       );
  // }
}

class _ReadmeComponent extends StatelessWidget {
  final String? readmeData;
  const _ReadmeComponent({
    required this.readmeData,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'README.md',
          style: TextStyles.regular17,
        ),
        AppConstants.mediumHeight,
        CustomMarkdownRenderer(
          data: readmeData,
        ),
      ],
    );
  }
}
