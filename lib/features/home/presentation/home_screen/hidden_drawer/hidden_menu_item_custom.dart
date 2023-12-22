import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/simple_hidden_drawer/animated_drawer_content.dart';

class HiddenMenuItemCustom extends StatelessWidget {
  /// name of the menu item
  final String name;

  /// callback to receive action click in item
  final GestureTapCallback? onTap;

  final Color colorLineSelected;

  /// Base style of the text-item.
  final TextStyle? baseStyle;

  /// style to apply to text when item is selected
  final TextStyle? selectedStyle;

  final bool selected;

  final TypeOpen typeOpen;

  const HiddenMenuItemCustom({
    Key? key,
    required this.name,
    this.onTap,
    required this.colorLineSelected,
    this.baseStyle,
    this.selectedStyle,
    required this.selected,
    required this.typeOpen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 15.0),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            const Icon(Icons.add),
            Text(name),
          ],
        ),
      ),
    );
  }
}
