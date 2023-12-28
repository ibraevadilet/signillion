import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:signillion/core/images/app_images.dart';
import 'package:signillion/features/tasks/tasks_calendar.dart';
import 'package:signillion/theme/app_colors.dart';
import 'package:signillion/theme/app_text_styles.dart';
import 'package:signillion/widgets/app_unfocuser.dart';
import 'package:signillion/widgets/buttun_dateil.dart';
import 'package:signillion/widgets/container_dateil.dart';
import 'package:signillion/widgets/custom_app_bar.dart';
import 'package:signillion/widgets/custom_button.dart';
import 'package:signillion/widgets/custom_text_fields_Two.dart';

class TasksOpen extends StatefulWidget {
  const TasksOpen({super.key});
  @override
  State<TasksOpen> createState() => _TasksOpenState();
}

class _TasksOpenState extends State<TasksOpen> {
  final TextEditingController controllerOne = TextEditingController();
  final TextEditingController controllerTwo = TextEditingController();
  int isTitel = 0;
  @override
  Widget build(BuildContext context) {
    return AppUnfocuser(
      child: Scaffold(
        appBar: CustomAppBar(
          titleTextStyle:
              AppTextStyles.s26W700(color: AppColors.colorBlue0821AE),
          title: 'Tasks',
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: InkWell(
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
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextFieldTwo(
                  controller: controllerOne,
                  fillColor: AppColors.colorGreyEAEAEA,
                  isFilled: true,
                  widthBorder: 0,
                  hintText: 'To Do...',
                ),
                const SizedBox(height: 10),
                CustomTextFieldTwo(
                  heightContai: 140,
                  maxLines: 5,
                  controller: controllerTwo,
                  fillColor: AppColors.colorGreyEAEAEA,
                  isFilled: true,
                  widthBorder: 0,
                  hintText: 'Add description',
                ),
                const SizedBox(height: 18),
                Row(
                  children: [
                    Text(
                      'Priority',
                      style: AppTextStyles.s15W600(),
                    ),
                    const SizedBox(width: 15),
                    ButtunDateil(
                      onPressed: () {
                        isTitel = 1;
                        setState(() {});
                      },
                      text: 'Low',
                      color: AppColors.color3EAE8F,
                      colorTwo: AppColors.color3EAE8F,
                      isActive: isTitel == 1,
                    ),
                    const SizedBox(width: 5),
                    ButtunDateil(
                      onPressed: () {
                        isTitel = 2;
                        setState(() {});
                      },
                      text: 'Medium',
                      color: AppColors.colorAmberFBD242,
                      colorTwo: AppColors.colorAmberFBD242,
                      isActive: isTitel == 2,
                    ),
                    const SizedBox(width: 5),
                    ButtunDateil(
                      onPressed: () {
                        isTitel = 3;
                        setState(() {});
                      },
                      text: 'High',
                      color: AppColors.colorRedFA3E23,
                      colorTwo: AppColors.colorRedFA3E23,
                      isActive: isTitel == 3,
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Text(
                      'Date & Time',
                      style: AppTextStyles.s15W600(),
                    ),
                    const SizedBox(width: 10),
                    const ContainerDateil(
                      horizontal: 9,
                      titel: '12.09.2023',
                    ),
                    const SizedBox(width: 10),
                    const ContainerDateil(
                      horizontal: 9,
                      titel: '14:26',
                    ),
                  ],
                ),
                const SizedBox(height: 18),
                Row(
                  children: [
                    Text(
                      'Add attachment',
                      style: AppTextStyles.s15W600(),
                    ),
                    const SizedBox(width: 10),
                    SvgPicture.asset(
                      AppImages.addIconSvg,
                      width: 22,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                CustomButton(
                  contentPadding: 0,
                  width: 104,
                  height: 35,
                  color: AppColors.colorBlue0821AE,
                  onPress: () {},
                  child: Text(
                    'Save task',
                    style: AppTextStyles.s14Wbold(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
