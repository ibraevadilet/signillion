import 'package:flutter/material.dart';
import 'package:signillion/theme/app_text_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    this.title,
    this.icon,
    this.titleWidget,
    this.centerTitle = true,
    this.actions,
    Key? key, this.titleTextStyle,
  }) : super(key: key);
  final String? title;
  final Widget? icon;
  final Widget? titleWidget;
  final bool centerTitle;
  final List<Widget>? actions;
  final TextStyle? titleTextStyle;
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: titleWidget ?? FittedBox(child: Text(title!)),
      titleTextStyle: titleTextStyle ?? AppTextStyles.s18W700(),
      elevation: 0,
      centerTitle: centerTitle,
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      leading: icon,
      actions: actions,
    );
  }
}
