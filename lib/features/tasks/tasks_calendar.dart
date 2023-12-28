import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:signillion/core/images/app_images.dart';
import 'package:signillion/theme/app_colors.dart';
import 'package:signillion/theme/app_text_styles.dart';
import 'package:signillion/widgets/app_unfocuser.dart';
import 'package:signillion/widgets/bottom_buttons/bottom_buttons.dart';
import 'package:signillion/widgets/custom_text_field_trhee.dart';
import 'package:signillion/widgets/spaces.dart';
import 'package:table_calendar/table_calendar.dart';

class TasksCalendar extends StatefulWidget {
  const TasksCalendar({super.key});
  @override
  State<TasksCalendar> createState() => _TasksCalendarState();
}

class _TasksCalendarState extends State<TasksCalendar> {
  DateTime toDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return AppUnfocuser(
      child: Scaffold(
        bottomNavigationBar: const BottomButtons(
          isRightActive: true,
        ),
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: InkWell(
                onTap: () {},
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
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 5,
            ),
            child: Column(
              children: [
                Container(
                  width: context.width,
                  height: 460,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: TableCalendar(
                          rowHeight: 44,
                          locale: 'en_US',
                          headerStyle: const HeaderStyle(
                            formatButtonVisible: false,
                            titleCentered: true,
                          ),
                          focusedDay: toDay,
                          firstDay: DateTime.utc(2010, 01, 01),
                          lastDay: DateTime.utc(2030, 12, 31),
                        ),
                      ),
                      const Spacer(),
                      const Divider(
                        indent: 15,
                        endIndent: 15,
                        thickness: 1,
                        color: AppColors.colorGreyD9D9D9,
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          children: [
                            const SizedBox(width: 8),
                            const Expanded(
                              child: SizedBox(
                                width: 106,
                                height: 59,
                                child: CustomTextFieldTrhee(
                                  labelText: 'From',
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            const Expanded(
                              child: SizedBox(
                                width: 106,
                                height: 59,
                                child: CustomTextFieldTrhee(
                                  labelText: 'To',
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 59,
                                  width: 106,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Set Date',
                                      style: AppTextStyles.s16W500(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 5),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
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
