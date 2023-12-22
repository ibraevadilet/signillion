import 'package:flutter/material.dart';
import 'package:signillion/widgets/bottom_buttons/bottom_buttons.dart';

class Documents extends StatefulWidget {
  const Documents({super.key});
  @override
  State<Documents> createState() => _DocumentsState();
}

class _DocumentsState extends State<Documents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomButtons(
        isLeftActive: true,
      ),
      body: Column(
        children: [
          Container(),
        ],
      ),
    );
  }
}
