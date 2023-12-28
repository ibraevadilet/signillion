import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:signillion/features/tasks/tasks_page/tasks_tabbarview_page.dart';
import 'package:signillion/features/tasks/tasks_page/tasks_tabbarview_two_page.dart';
import 'package:signillion/theme/app_colors.dart';
import 'package:signillion/theme/app_text_styles.dart';
import 'package:signillion/widgets/bottom_buttons/bottom_buttons.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});
  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomButtons(
        isRightActive: true,
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Center(
              child: Container(
                height: 45,
                width: 360,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.colorGreyfromARGB,
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0, 6),
                      color: AppColors.colorGrey9A9A9A,
                      blurRadius: 10,
                      inset: true,
                    ),
                  ],
                ),
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: Colors.black,
                  labelStyle: AppTextStyles.s16W500(),
                  unselectedLabelColor: Colors.black,
                  unselectedLabelStyle: AppTextStyles.s16W500(),
                  indicator: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  tabs: const [
                    Tab(
                      text: 'Today',
                    ),
                    Tab(
                      text: 'Completed',
                    ),
                  ],
                ),
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  TasksTabbarview(),
                  TasksTabbarviewTwoPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
