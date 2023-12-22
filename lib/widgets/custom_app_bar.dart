import 'package:flutter/material.dart';
import 'package:signillion/theme/app_text_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    this.title,
    this.icon,
    this.titleWidget,
    this.centerTitle = true,
    this.actions,
    Key? key,
  }) : super(key: key);
  final String? title;
  final Widget? icon;
  final Widget? titleWidget;
  final bool centerTitle;
  final List<Widget>? actions;
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: titleWidget ?? FittedBox(child: Text(title!)),
      titleTextStyle: AppTextStyles.s20W700(),
      elevation: 0,
      centerTitle: centerTitle,
      leading: icon,
      actions: actions,
    );
  }
}
