import 'package:flutter/cupertino.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/utils/widgets/inputs/custom_input.dart';

class RepoSearchInputSection extends StatefulWidget {
  const RepoSearchInputSection({super.key});

  @override
  State<RepoSearchInputSection> createState() => _RepoSearchInputSectionState();
}

class _RepoSearchInputSectionState extends State<RepoSearchInputSection> {
  final _search = TextEditingController();

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
    );
  }
}
