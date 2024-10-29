import 'package:flutter/material.dart';

class CustomPopUpMenuButton extends StatelessWidget {
  final List<PopupMenuEntry<dynamic>> Function(BuildContext) itemBuilder;
  final Widget child;
  final void Function(dynamic)? onSelected;
  final String? tooltip;
  const CustomPopUpMenuButton({
    super.key,
    required this.itemBuilder,
    required this.child,
    required this.onSelected,
    this.tooltip,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: itemBuilder,
      onSelected: onSelected,
      tooltip: tooltip,
      child: child,
    );
  }
}

PopupMenuEntry customPopUpMenuItem({
  required int value,
  required String title,
}) =>
    PopupMenuItem(
      value: value,
      height: 30,
      child: Text(title),
    );
