import 'package:flutter/material.dart';

import '../../../constants/app_constants.dart';

class CustomPaginator extends StatelessWidget {
  final int currentPage;
  final int itemsPerPage;
  final int totalItems;
  final VoidCallback onPrevious;
  final VoidCallback onNext;
  const CustomPaginator({
    super.key,
    required this.currentPage,
    required this.itemsPerPage,
    required this.totalItems,
    required this.onPrevious,
    required this.onNext,
  });

  int get _totalPages => (totalItems / itemsPerPage).ceil();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Align(
            child: currentPage > 1
                ? _IconButton(
                    onTap: onPrevious,
                    icon: Icons.arrow_back_ios_sharp,
                  )
                : const SizedBox(),
          ),
        ),
        Text('Page $currentPage of $_totalPages'),
        Expanded(
          child: Align(
            child: _IconButton(
              onTap: onNext,
              icon: Icons.arrow_forward_ios_sharp,
            ),
          ),
        ),
      ],
    );
  }
}

class _IconButton extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  const _IconButton({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      iconSize: AppConstants.iconSize,
      icon: Icon(
        icon,
      ),
    );
  }
}
