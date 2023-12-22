import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:signillion/core/images/app_images.dart';
import 'package:signillion/features/Documents/documents.dart';
import 'package:signillion/features/home/home_main.dart';
import 'package:signillion/features/home/presentation/home_screen/hidden_drawer/hidden_drower_menu_custom.dart';
import 'package:signillion/theme/app_colors.dart';
import 'package:signillion/theme/app_text_styles.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});
  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> pages = [];

  String title = 'Home';

  @override
  void initState() {
    super.initState();
    pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Home',
          baseStyle: AppTextStyles.s14W400(),
          selectedStyle: AppTextStyles.s17W600(),
          onTap: () {
            setState(() {
              title = 'Home';
            });
          },
        ),
        const HomeScreen(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Documents',
          baseStyle: AppTextStyles.s14W400(),
          selectedStyle: AppTextStyles.s17W600(),
          onTap: () {
            setState(() {
              title = 'Documents';
            });
          },
        ),
        const Documents(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenuCustom(
      backgroundColorMenu: AppColors.color60Blue0921B0,
      backgroundColorAppBar: Colors.white,
      elevationAppBar: 1,
      screens: pages,
      initPositionSelected: 0,
      verticalScalePercent: 70,
      slidePercent: 60,
      actionsAppBar: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: SvgPicture.asset(
            AppImages.searchIconSvg,
            width: 27,
          ),
        ),
      ],
      tittleAppBar: title == 'Home'
          ? Image.asset(
              AppImages.logo,
              width: 170,
              height: 63,
            )
          : null,
      leadingAppBar: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: SvgPicture.asset(AppImages.drawerIconSvg),
      ),
    );
  }
}


