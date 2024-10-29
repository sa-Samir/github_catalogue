import 'package:flutter/material.dart';

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
                ? IconButton(
                    onPressed: onPrevious,
                    icon: const Icon(
                      Icons.arrow_back_ios_sharp,
                    ),
                  )
                : const SizedBox(),
          ),
        ),
        Text('Page $currentPage of $_totalPages'),
        Expanded(
          child: Align(
            child: IconButton(
              onPressed: onNext,
              icon: const Icon(Icons.arrow_forward_ios_sharp),
            ),
          ),
        ),
      ],
    );
  }
}
