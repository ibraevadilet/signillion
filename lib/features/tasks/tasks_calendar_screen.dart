import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:signillion/core/formatters/date_format.dart';
import 'package:signillion/core/images/app_images.dart';
import 'package:signillion/theme/app_colors.dart';
import 'package:signillion/theme/app_text_styles.dart';
import 'package:signillion/widgets/app_unfocuser.dart';
import 'package:signillion/widgets/bottom_buttons/bottom_buttons.dart';
import 'package:signillion/widgets/custom_app_bar.dart';
import 'package:signillion/widgets/spaces.dart';
import 'package:table_calendar/table_calendar.dart';

@RoutePage()
class TasksCalendarScreen extends StatefulWidget {
  const TasksCalendarScreen({super.key});
  @override
  State<TasksCalendarScreen> createState() => _TasksCalendarScreenState();
}

class _TasksCalendarScreenState extends State<TasksCalendarScreen> {
  final focusedDay = DateTime.now();
  DateTime? rangeStart;
  DateTime? rangeEnd;
  @override
  Widget build(BuildContext context) {
    return AppUnfocuser(
      child: Scaffold(
        bottomNavigationBar: const BottomButtons(
          isRightActive: true,
        ),
        appBar: CustomAppBar(
          iconColor: AppColors.color100Blue0921B0,
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
                          calendarStyle: const CalendarStyle(
                            rangeEndDecoration: BoxDecoration(
                              color: AppColors.color100Blue0921B0,
                              shape: BoxShape.circle,
                            ),
                            rangeStartDecoration: BoxDecoration(
                              color: AppColors.color100Blue0921B0,
                              shape: BoxShape.circle,
                            ),
                          ),
                          focusedDay: focusedDay,
                          firstDay: DateTime.utc(2010, 01, 01),
                          lastDay: DateTime.utc(2030, 12, 31),
                          rangeStartDay: rangeStart,
                          rangeEndDay: rangeEnd,
                          onDaySelected: (selectedDay, focusedDay) {
                            if (rangeStart == null && rangeEnd == null) {
                              rangeStart = selectedDay;
                            } else if (rangeStart != null && rangeEnd == null) {
                              if (selectedDay.isAfter(
                                rangeStart!.subtract(const Duration(days: 1)),
                              )) {
                                rangeEnd = selectedDay;
                              }
                            } else if (rangeStart != null && rangeEnd != null) {
                              rangeEnd = null;
                              rangeStart = selectedDay;
                            }
                            setState(() {});
                          },
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
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    width: 0.5,
                                    color: Colors.black,
                                  ),
                                ),
                                height: 40,
                                child: Text(
                                  rangeStart != null
                                      ? AppDateFormats.formatDdMMYyyy
                                          .format(rangeStart!)
                                      : 'From',
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    width: 0.5,
                                    color: Colors.black,
                                  ),
                                ),
                                height: 40,
                                child: Text(
                                  rangeEnd != null
                                      ? AppDateFormats.formatDdMMYyyy
                                          .format(rangeEnd!)
                                      : 'To',
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  height: 40,
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
