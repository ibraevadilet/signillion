import 'package:flutter/material.dart';
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
      body: Column(
        children: [
          Container(),
        ],
      ),
    );
  }
}
