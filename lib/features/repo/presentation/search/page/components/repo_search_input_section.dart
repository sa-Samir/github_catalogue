import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/constants/app_colors.dart';
import '../../../../../../core/infrastructure/services/debouncer.dart';
import '../../../../../../core/utils/widgets/inputs/custom_input.dart';
import '../../bloc/repo_search_bloc.dart';

class RepoSearchInputSection extends StatefulWidget {
  final TextEditingController search;
  const RepoSearchInputSection({super.key, required this.search});

  @override
  State<RepoSearchInputSection> createState() => _RepoSearchInputSectionState();
}

class _RepoSearchInputSectionState extends State<RepoSearchInputSection> {
  final _debouncer = Debouncer();

  TextEditingController get _search => widget.search;

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
        context.read<RepoSearchBloc>().add(
              RepoSearchRequested(keyword: _search.text, isReload: true),
            );
      },
    );
  }
}
