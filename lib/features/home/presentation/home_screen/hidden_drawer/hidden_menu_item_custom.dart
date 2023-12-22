import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hidden_drawer_menu/simple_hidden_drawer/animated_drawer_content.dart';
import 'package:signillion/theme/app_text_styles.dart';

class HiddenMenuItemCustom extends StatelessWidget {
  /// name image of svg
  final String nameSvg;

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
  final int index;
  final TypeOpen typeOpen;

  const HiddenMenuItemCustom(
      {Key? key,
      required this.name,
      this.onTap,
      required this.colorLineSelected,
      this.baseStyle,
      this.selectedStyle,
      required this.selected,
      required this.index,
      required this.typeOpen,
      required this.nameSvg})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: index == 6 ? 40 : 0),
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 27, left: 35),
        child: InkWell(
          onTap: onTap,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                nameSvg,
                width: 23,
                height: 23,
              ),
              const SizedBox(width: 14),
              Text(
                name,
                style: AppTextStyles.s17W400(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
