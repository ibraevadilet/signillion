import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:signillion/core/images/app_images.dart';
import 'package:signillion/features/archive/archive.dart';
import 'package:signillion/features/documents/documents.dart';
import 'package:signillion/features/home/home_main.dart';
import 'package:signillion/features/home/presentation/home_screen/hidden_drawer/hidden_drower_menu_custom.dart';
import 'package:signillion/features/home/presentation/home_screen/hidden_drawer/item_hidden_menu_custom.dart';
import 'package:signillion/features/home/presentation/home_screen/hidden_drawer/screen_hidden_drawer_custom.dart';
import 'package:signillion/features/logout/logout.dart';
import 'package:signillion/features/profile/profile.dart';
import 'package:signillion/features/settings/settings.dart';
import 'package:signillion/features/support/support.dart';
import 'package:signillion/features/tasks/tasks.dart';
import 'package:signillion/features/templates/templates.dart';
import 'package:signillion/features/trash_bin/trash_bin.dart';
import 'package:signillion/theme/app_colors.dart';
import 'package:signillion/theme/app_text_styles.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});
  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawerCustom> pages = [];

  String title = 'Home';

  @override
  void initState() {
    super.initState();
    pages = [
      ScreenHiddenDrawerCustom(
        ItemHiddenMenuCustom(
          icon: AppImages.documentsIconSvg,
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
      ScreenHiddenDrawerCustom(
        ItemHiddenMenuCustom(
          icon: AppImages.documentsIconSvg,
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
      ScreenHiddenDrawerCustom(
        ItemHiddenMenuCustom(
          icon: AppImages.templatesIconSvg,
          name: 'Templates',
          baseStyle: AppTextStyles.s14W400(),
          selectedStyle: AppTextStyles.s17W600(),
          onTap: () {
            setState(() {
              title = 'Templates';
            });
          },
        ),
        const Templates(),
      ),
      ScreenHiddenDrawerCustom(
        ItemHiddenMenuCustom(
          icon: AppImages.tasksIconSvg,
          name: 'Tasks',
          baseStyle: AppTextStyles.s14W400(),
          selectedStyle: AppTextStyles.s17W600(),
          onTap: () {
            setState(() {
              title = 'Tasks';
            });
          },
        ),
        const Tasks(),
      ),
      ScreenHiddenDrawerCustom(
        ItemHiddenMenuCustom(
          icon: AppImages.archiveIconSvg,
          name: 'Archive',
          baseStyle: AppTextStyles.s14W400(),
          selectedStyle: AppTextStyles.s17W600(),
          onTap: () {
            setState(() {
              title = 'Archive';
            });
          },
        ),
        const Archive(),
      ),
      ScreenHiddenDrawerCustom(
        ItemHiddenMenuCustom(
          icon: AppImages.trashIconSvg,
          name: 'Trash Bin',
          baseStyle: AppTextStyles.s14W400(),
          selectedStyle: AppTextStyles.s17W600(),
          onTap: () {
            setState(() {
              title = 'Trash Bin';
            });
          },
        ),
        const TrashBin(),
      ),
      ScreenHiddenDrawerCustom(
        ItemHiddenMenuCustom(
          icon: AppImages.profileIconSvg,
          name: 'Profile',
          baseStyle: AppTextStyles.s14W400(),
          selectedStyle: AppTextStyles.s17W600(),
          onTap: () {
            setState(() {
              title = 'Profile';
            });
          },
        ),
        const Profile(),
      ),
      ScreenHiddenDrawerCustom(
        ItemHiddenMenuCustom(
          icon: AppImages.profileIconSvg,
          name: 'Settings',
          baseStyle: AppTextStyles.s14W400(),
          selectedStyle: AppTextStyles.s17W600(),
          onTap: () {
            setState(() {
              title = 'Settings';
            });
          },
        ),
        const Settings(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenuCustom(
      backgroundColorMenu: AppColors.color100Blue0921B0,
      backgroundColorAppBar: Colors.white,
      elevationAppBar: 1,
      screens: pages,
      initPositionSelected: 0,
      verticalScalePercent: 65,
      slidePercent: 60,
      actionsAppBar: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              AppImages.searchIconSvg,
              width: 27,
            ),
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
