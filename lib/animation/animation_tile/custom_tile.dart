import 'package:flutter/material.dart';

class CustomTile {
  final String title;
  final Widget content;
  final Icon icon;
  final Function()? onTap;
  final bool isExpanded;
  final Color? colorTitle;
  final Color? colorIcon;

  CustomTile({
    required this.title,
    required this.content,
    this.icon = const Icon(Icons.keyboard_arrow_down),
    this.onTap,
    this.isExpanded = false,
    this.colorTitle,
    this.colorIcon,
  });
}

class CustomTileAnimate extends CustomTile {
  CustomTileAnimate({
    required super.title,
    required super.content,
    super.isExpanded,
    super.icon,
    super.onTap,
  }) : super(
          colorTitle: isExpanded ? Colors.blue : Colors.black,
          colorIcon: isExpanded ? Colors.blue : Colors.grey,
        );
}
