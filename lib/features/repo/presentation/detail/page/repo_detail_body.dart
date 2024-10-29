import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/enums.dart';
import '../../../../../core/utils/widgets/empty/custom_empty_widget.dart';
import '../../../../../core/utils/widgets/loader/custom_circular_loader.dart';
import '../../../data/model/repo/details/repo_details_model.dart';
import '../cubit/repo_detail_cubit.dart';

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
    return BlocBuilder<RepoDetailCubit, RepoDetailState>(
      builder: (context, state) {
        if (state.status == Status.loading) {
          return const CustomCircularLoader();
        }
        if (state.errorMessage.isNotEmpty) {
          return CustomEmptyWidget(
            msg: state.errorMessage,
            onRetry: _fetchData,
          );
        }
        return const Placeholder();
      },
    );
  }

  void _fetchData() {
    context.read<RepoDetailCubit>().fetchReadme(
          ownerLogin: _repo?.owner?.login,
          repositoryName: _repo?.name,
        );
  }
}
