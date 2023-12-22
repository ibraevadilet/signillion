import 'package:flutter/material.dart';
import 'package:signillion/widgets/bottom_buttons/bottom_buttons.dart';

class Archive extends StatefulWidget {
  const Archive({super.key});
  @override
  State<Archive> createState() => _ArchiveState();
}

class _ArchiveState extends State<Archive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomButtons(),
      body: Column(
        children: [
          Container(),
        ],
      ),
    );
  }
}
