import 'package:flutter/material.dart';

import '../../../../core/constants/app_constants.dart';
import 'components/home_search_input_section.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: AppConstants.scrollPhysics,
      padding: EdgeInsets.all(AppConstants.screenPadding),
      child: Column(
        children: [
          HomeSearchInputSection(),  
        ],
      ),
    );
  }
}
