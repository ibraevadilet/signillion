import 'package:flutter/material.dart';
import 'package:signillion/theme/app_colors.dart';
import 'package:signillion/widgets/bottom_buttons/bottom_buttons.dart';
import 'package:signillion/widgets/list_documents_item_widget.dart';

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
      body: ListView.separated(
        itemCount: 4,
        separatorBuilder: (context, index) => const Divider(
          thickness: 2,
          color: AppColors.colorGreyD9D9D9,
        ),
        itemBuilder: (context, index) => const ListDocumentsItem(),
      ),
    );
  }
}
