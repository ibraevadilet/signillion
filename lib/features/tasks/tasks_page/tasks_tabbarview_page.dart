import 'package:flutter/material.dart';
import 'package:signillion/theme/app_colors.dart';
import 'package:signillion/widgets/list_tasks_item_widget.dart';

class TasksTabbarview extends StatefulWidget {
  const TasksTabbarview({super.key});

  @override
  State<TasksTabbarview> createState() => _TasksTabbarviewState();
}

class _TasksTabbarviewState extends State<TasksTabbarview> {
  List<ListTasksItem> isb = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTasksItem(
          onTap: () {},
          color: AppColors.colorRedFA3E23,
        ),
         ListTasksItem(
              onTap: () {},
          name: 'If a task is too loooooooooooooong\nit looks like this',
          data: '20h30 left',
          color: AppColors.colorAmberFBD242,
        ),
      ],
    );
  }
}
