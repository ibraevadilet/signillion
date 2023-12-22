import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hidden_drawer_menu/controllers/simple_hidden_drawer_controller.dart';
import 'package:hidden_drawer_menu/simple_hidden_drawer/animated_drawer_content.dart';
import 'package:signillion/core/images/app_images.dart';
import 'package:signillion/features/home/presentation/home_screen/hidden_drawer/hidden_menu_item_custom.dart';
import 'package:signillion/features/home/presentation/home_screen/hidden_drawer/item_hidden_menu_custom.dart';
import 'package:signillion/theme/app_text_styles.dart';

class HiddenMenuCustom extends StatefulWidget {
  /// Decocator that allows us to add backgroud in the menu(img)
  final DecorationImage? background;

  /// that allows us to add shadow above menu items
  final bool enableShadowItemsMenu;

  /// that allows us to add backgroud in the menu(color)
  final Color backgroundColorMenu;

  /// Items of the menu
  final List<ItemHiddenMenuCustom> items;

  /// Callback to receive item selected for user
  final Function(int)? selectedListen;

  /// position to set initial item selected in menu
  final int initPositionSelected;

  final TypeOpen typeOpen;

  const HiddenMenuCustom(
      {Key? key,
      required this.background,
      required this.items,
      this.selectedListen,
      required this.initPositionSelected,
      required this.backgroundColorMenu,
      this.enableShadowItemsMenu = false,
      this.typeOpen = TypeOpen.FROM_LEFT})
      : super(key: key);

  @override
  _HiddenMenuCustomState createState() => _HiddenMenuCustomState();
}

class _HiddenMenuCustomState extends State<HiddenMenuCustom> {
  late int _indexSelected;
  late SimpleHiddenDrawerController controller;

  @override
  void initState() {
    _indexSelected = widget.initPositionSelected;
    super.initState();
  }

  @override
  void didChangeDependencies() {
    controller = SimpleHiddenDrawerController.of(context);
    controller.addListener(_listenerController);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    controller.removeListener(_listenerController);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: widget.background,
          color: widget.backgroundColorMenu,
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                AppImages.logo,
                width: 230,
                height: 80,
                color: Colors.white,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(top: 30.0, bottom: 20.0),
                  decoration: BoxDecoration(
                    boxShadow: widget.enableShadowItemsMenu
                        ? [
                            const BoxShadow(
                              color: Color(0x44000000),
                              offset: Offset(0.0, 5.0),
                              blurRadius: 50.0,
                              spreadRadius: 30.0,
                            ),
                          ]
                        : [],
                  ),
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(0.0),
                    itemCount: widget.items.length,
                    itemBuilder: (context, index) {
                      return HiddenMenuItemCustom(
                        index: index,
                        nameSvg: widget.items[index].icon,
                        name: widget.items[index].name,
                        selected: index == _indexSelected,
                        colorLineSelected:
                            widget.items[index].colorLineSelected,
                        baseStyle: widget.items[index].baseStyle,
                        selectedStyle: widget.items[index].selectedStyle,
                        typeOpen: widget.typeOpen,
                        onTap: () {
                          if (widget.items[index].onTap != null) {
                            widget.items[index].onTap!();
                          }
                          controller.setSelectedMenuPosition(index);
                        },
                      );
                    },
                  ),
                ),
              ),
              Row(
                children: [
                  const SizedBox(width: 35),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          AppImages.logoutIconSvg,
                        ),
                        const SizedBox(width: 12),
                        Text(
                          'Logout',
                          style: AppTextStyles.s17W400(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          AppImages.supportIconSvg,
                        ),
                        const SizedBox(width: 12),
                        Text(
                          'Support',
                          style: AppTextStyles.s17W400(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 35),
                ],
              ),
              const SizedBox(height: 22),
            ],
          ),
        ),
      ),
    );
  }

  void _listenerController() {
    setState(() {
      _indexSelected = controller.position;
    });
  }
}
