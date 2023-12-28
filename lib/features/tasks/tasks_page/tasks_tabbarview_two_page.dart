import 'package:flutter/material.dart';
import 'package:signillion/core/images/app_images.dart';
import 'package:signillion/theme/app_colors.dart';
import 'package:signillion/widgets/list_tasks_item_widget.dart';

class TasksTabbarviewTwoPage extends StatefulWidget {
  const TasksTabbarviewTwoPage({super.key});

  @override
  State<TasksTabbarviewTwoPage> createState() => _TasksTabbarviewTwoPageState();
}

class _TasksTabbarviewTwoPageState extends State<TasksTabbarviewTwoPage> {
  List<ListTasksItem> isb = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTasksItem(
          onTap: () {},
          images: AppImages.isactiveIconSvg,
          data: '',
        ),
        ListTasksItem(
          onTap: () {},
          images: AppImages.isactiveIconSvg,
          name: 'If a task is too loooooooooooooong\nit looks like this',
          data: '',
        ),

        // Expanded(
        //   child: ListView.separated(
        //     separatorBuilder: (context, index) => const Divider(
        //       thickness: 2,
        //       color: AppColors.colorGreyD9D9D9,
        //     ),
        //     itemCount: isb.length,
        //     itemBuilder: ((context, index) => isb[index]),
        //   ),
        // ),
      ],
    );
  }
}
