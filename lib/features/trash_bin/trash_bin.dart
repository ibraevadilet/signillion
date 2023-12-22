import 'package:flutter/material.dart';
import 'package:signillion/widgets/bottom_buttons/bottom_buttons.dart';

class TrashBin extends StatefulWidget {
  const TrashBin({super.key});
  @override
  State<TrashBin> createState() => _TrashBinState();
}

class _TrashBinState extends State<TrashBin> {
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
