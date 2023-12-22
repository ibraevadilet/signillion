import 'package:flutter/material.dart';
import 'package:signillion/widgets/bottom_buttons/bottom_buttons.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
