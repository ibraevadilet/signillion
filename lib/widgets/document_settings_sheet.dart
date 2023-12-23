import 'package:flutter/material.dart';
import 'package:signillion/core/formatters/shapes.dart';
import 'package:signillion/theme/app_colors.dart';
import 'package:signillion/widgets/spaces.dart';

Future<void> showDocumentSettingsSheet(BuildContext context) async {
  await showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    shape: AppShapes.bottomNavigatorShape(),
    builder: (context) => DraggableScrollableSheet(
        maxChildSize: 0.8,
        minChildSize: 0.4,
        initialChildSize: 0.8,
        expand: false,
        builder: (BuildContext context, ScrollController scrollController) {
          return Container(
            decoration: const BoxDecoration(
              color: AppColors.colorBlue0821AE,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            width: context.width,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 25),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: SingleChildScrollView(
                  physics: const ClampingScrollPhysics(),
                  controller: scrollController,
                  child: const Column(
                    children: [],
                  ),
                ),
              ),
            ),
          );
        }),
  );
}
