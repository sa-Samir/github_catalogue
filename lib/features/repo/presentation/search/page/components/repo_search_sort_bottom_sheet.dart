import 'package:flutter/material.dart';

import '../../../../../../core/constants/app_colors.dart';
import '../../../../../../core/constants/app_constants.dart';
import '../../../../../../core/constants/enums.dart';
import '../../../../../../core/constants/text_styles.dart';
import '../../../../../../core/utils/widgets/buttons/custom_filled_button.dart';
import '../../../../../../core/utils/widgets/list_view/custom_list_view.dart';

Future<List<String>> showRepoSearchSortBottomSheet(
  BuildContext context, {
  required String sortBy,
  required String orderBy,
}) async {
  String selectedSortBy = sortBy;
  String selectedOrderBy = orderBy;

  final maxHeight = MediaQuery.sizeOf(context).height * .8;

  await showModalBottomSheet(
    context: context,
    constraints: BoxConstraints.loose(Size.fromHeight(maxHeight)),
    builder: (context) => StatefulBuilder(
      builder: (BuildContext context, setState) {
        return SingleChildScrollView(
          padding: const EdgeInsets.all(
            AppConstants.screenPadding,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Sort By',
                style: TextStyles.medium14,
              ),
              _SortingOptions(
                groupValue: selectedSortBy,
                onValueChanged: (value) {
                  setState(() {
                    selectedSortBy = value;
                  });
                },
              ),
              const Text(
                'Order By',
                style: TextStyles.medium14,
              ),
              _OrderingOptions(
                groupValue: selectedOrderBy,
                onValueChanged: (value) {
                  setState(() {
                    selectedOrderBy = value;
                  });
                },
              ),
              AppConstants.mediumHeight,
              Align(
                child: CustomFilledButton(
                  title: 'Sort',
                  onTap: () => Navigator.pop(context),
                ),
              ),
            ],
          ),
        );
      },
    ),
  );
  return [selectedSortBy, selectedOrderBy];
}

class _SortingOptions extends StatelessWidget {
  final String groupValue;
  final ValueChanged onValueChanged;
  const _SortingOptions({
    required this.groupValue,
    required this.onValueChanged,
  });

  @override
  Widget build(BuildContext context) {
    return CustomListView(
      items: SortBy.values,
      itemBuilder: (context, index) => RadioListTile.adaptive(
        activeColor: AppColors.secondary,
        value: SortBy.values[index].value,
        groupValue: groupValue,
        onChanged: onValueChanged,
        title: Text(
          SortBy.values[index].name,
          style: TextStyles.regular15,
        ),
      ),
    );
  }
}

class _OrderingOptions extends StatelessWidget {
  final String groupValue;
  final ValueChanged onValueChanged;
  const _OrderingOptions({
    required this.groupValue,
    required this.onValueChanged,
  });

  @override
  Widget build(BuildContext context) {
    return CustomListView(
      items: OrderBy.values,
      itemBuilder: (context, index) => RadioListTile.adaptive(
        activeColor: AppColors.secondary,
        value: OrderBy.values[index].value,
        groupValue: groupValue,
        onChanged: onValueChanged,
        title: Text(
          OrderBy.values[index].name,
          style: TextStyles.regular15,
        ),
      ),
    );
  }
}
