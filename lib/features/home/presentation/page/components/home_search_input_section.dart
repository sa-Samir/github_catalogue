import 'package:flutter/cupertino.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/utils/widgets/inputs/custom_input.dart';

class HomeSearchInputSection extends StatelessWidget {
  const HomeSearchInputSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _RepoSearchComponent(),
      ],
    );
  }
}

class _RepoSearchComponent extends StatefulWidget {
  const _RepoSearchComponent();

  @override
  State<_RepoSearchComponent> createState() => _RepoSearchComponentState();
}

class _RepoSearchComponentState extends State<_RepoSearchComponent> {
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
