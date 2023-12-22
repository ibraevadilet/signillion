import 'package:flutter/material.dart';

class ItemHiddenMenuCustom {
  /// name image of svg
  final String icon;

  /// name of the menu item
  final String name;

  /// callback to receive action click in item
  final Function? onTap;

  final Color colorLineSelected;

  /// Base style of the text-item.
  final TextStyle baseStyle;

  /// style to apply to text when item is selected
  final TextStyle selectedStyle;
  final double? width;
  final double? height;
  final bool selected;

  ItemHiddenMenuCustom({
    Key? key,
    required this.name,
    required this.icon,
    this.selected = false,
    this.onTap,
    this.width,
    this.height,
    this.colorLineSelected = Colors.blue,
    required this.baseStyle,
    required this.selectedStyle,
  });
}
