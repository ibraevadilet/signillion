import 'package:flutter/material.dart';
import 'package:signillion/widgets/bottom_buttons/bottom_buttons.dart';

class Templates extends StatefulWidget {
  const Templates({super.key});
  @override
  State<Templates> createState() => _TemplatesState();
}

class _TemplatesState extends State<Templates> {
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
