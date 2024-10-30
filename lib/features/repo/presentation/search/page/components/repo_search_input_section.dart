import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/constants/app_colors.dart';
import '../../../../../../core/infrastructure/services/debouncer.dart';
import '../../../../../../core/utils/widgets/inputs/custom_input.dart';
import '../../bloc/repo_search_bloc.dart';

class RepoSearchInputSection extends StatefulWidget {
  const RepoSearchInputSection({super.key});

  @override
  State<RepoSearchInputSection> createState() => _RepoSearchInputSectionState();
}

class _RepoSearchInputSectionState extends State<RepoSearchInputSection> {
  final _debouncer = Debouncer();

  final _search = TextEditingController();

  @override
  void initState() {
    super.initState();
    _populate();
  }

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomInput(
      controller: _search,
      hint: 'Search Github Repositories...',
      prefix: Icon(
        CupertinoIcons.search,
        color: AppColors.inputGrey,
      ),
      textInputAction: TextInputAction.search,
      onChanged: _onKeywordChanged,
    );
  }

  void _onKeywordChanged(String value) {
    _debouncer.run(
      () {
        final bloc = context.read<RepoSearchBloc>();
        bloc.add(RepoSearchKeywordChanged(keyword: value));
        bloc.add(
          RepoSearchRequested(isReload: true),
        );
      },
    );
  }

  void _populate() {
    Future.delayed(
      const Duration(seconds: 1),
      () {
        if (mounted) {
          _search.text = context.read<RepoSearchBloc>().state.keyword;
        }
      },
    );
  }
}
