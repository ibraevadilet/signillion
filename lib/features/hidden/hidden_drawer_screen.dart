import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:signillion/core/images/app_images.dart';
import 'package:signillion/features/archive/archive.dart';
import 'package:signillion/features/documents/documents.dart';
import 'package:signillion/features/hidden/widgets/hidden_drower_menu_custom.dart';
import 'package:signillion/features/hidden/widgets/item_hidden_menu_custom.dart';
import 'package:signillion/features/hidden/widgets/screen_hidden_drawer_custom.dart';
import 'package:signillion/features/home/presentation/home_screen/home_screen.dart';
import 'package:signillion/features/profile/profile.dart';
import 'package:signillion/features/settings/settings.dart';
import 'package:signillion/features/tasks/tasks_calendar.dart';
import 'package:signillion/features/tasks/tasks_screen.dart';
import 'package:signillion/features/templates/templates.dart';
import 'package:signillion/features/trash_bin/trash_bin.dart';
import 'package:signillion/theme/app_colors.dart';
import 'package:signillion/theme/app_text_styles.dart';

@RoutePage()
class HiddenDrawerScreen extends StatefulWidget {
  const HiddenDrawerScreen({super.key, this.initScreen = 0});
  final int initScreen;
  @override
  State<HiddenDrawerScreen> createState() => _HiddenDrawerScreenState();
}

class _HiddenDrawerScreenState extends State<HiddenDrawerScreen> {
  List<ScreenHiddenDrawerCustom> pages = [];

  List<String> titleList = [
    'Home',
    'Documents',
    'Templates',
    'Tasks',
    'Archive',
    'Trash Bin',
    'Profile',
    'Settings',
  ];

  late String title = titleList[widget.initScreen];

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
        const TasksScreen(),
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
        const ProfileScreen(),
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
      initPositionSelected: widget.initScreen,
      verticalScalePercent: 65,
      slidePercent: 60,
      styleAutoTittleName:
          AppTextStyles.s26W700(color: AppColors.colorBlue0821AE),
      actionsAppBar: title == 'Profile'
          ? []
          : [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    title == 'Tasks'
                        ? InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const TasksCalendar(),
                                ),
                              );
                            },
                            child: SvgPicture.asset(
                              AppImages.tasksAppbarIconSvg,
                              width: 29,
                              color: AppColors.colorGrey474747,
                            ),
                          )
                        : InkWell(
                            onTap: () {},
                            child: SvgPicture.asset(
                              AppImages.searchIconSvg,
                              width: 29,
                              color: AppColors.colorGrey474747,
                            ),
                          ),
                  ],
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
        padding: const EdgeInsets.only(left: 8),
        child: SvgPicture.asset(AppImages.drawerIconSvg),
      ),
    );
  }
}
