import 'package:flutter/material.dart';
import 'package:signillion/core/functions/push_router_func.dart';
import 'package:signillion/core/images/app_images.dart';
import 'package:signillion/features/home/presentation/home_screen/widgets/bottom_button_item_widget.dart';
import 'package:signillion/routes/mobile_auto_router.gr.dart';

class BottomButtons extends StatelessWidget {
  const BottomButtons({
    super.key,
    this.isRightActive = false,
    this.isLeftActive = false,
  });

  final bool isRightActive;
  final bool isLeftActive;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        BottomButtomItem(
          image: AppImages.docMainSvg,
          onTapTwo: () {
            print('khhljkbhj');
          },
          isSelected: isLeftActive,
          right: true,
          title: 'Documents',
          onTap: () {
            AppRouting.pushAndPopUntilFunction(
              HiddenDrawerRoute(initScreen: 1),
            );
          },
        ),
        BottomButtomItem(
          image: AppImages.tasksIconSvg,
          onTapTwo: () {
            AppRouting.pushFunction(const TaskAddRoute());
          },
          isSelected: isRightActive,
          title: 'Tasks',
          onTap: () {
            AppRouting.pushAndPopUntilFunction(
              HiddenDrawerRoute(initScreen: 3),
            );
          },
        ),
      ],
    );
  }
}
