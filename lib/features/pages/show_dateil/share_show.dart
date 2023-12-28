import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:signillion/core/formatters/shapes.dart';
import 'package:signillion/core/images/app_images.dart';
import 'package:signillion/theme/app_colors.dart';
import 'package:signillion/theme/app_text_styles.dart';
import 'package:signillion/widgets/list_documents_item_widget.dart';
import 'package:signillion/widgets/spaces.dart';

Future<void> showShareSheet(BuildContext context) async {
  await showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    shape: AppShapes.bottomNavigatorShape(),
    builder: (context) => DraggableScrollableSheet(
        maxChildSize: 0.4 + 0.04,
        minChildSize: 0.2,
        initialChildSize: 0.4 + 0.04,
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
              padding: const EdgeInsets.only(left: 15, right: 10, top: 25),
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ListDocumentsItem(
                        isActive: false,
                      ),
                      const Divider(
                        thickness: 1.50,
                        indent: 35,
                        endIndent: 35,
                        color: AppColors.colorGreyD9D9D9,
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                const CircleAvatar(
                                  radius: 30,
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  'Contact',
                                  style: AppTextStyles.s11W400(),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              children: [
                                const CircleAvatar(
                                  radius: 30,
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  'Contact',
                                  style: AppTextStyles.s11W400(),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              children: [
                                const CircleAvatar(
                                  radius: 30,
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  'Contact',
                                  style: AppTextStyles.s11W400(),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              children: [
                                const CircleAvatar(
                                  radius: 30,
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  'Contact',
                                  style: AppTextStyles.s11W400(),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              children: [
                                const CircleAvatar(
                                  radius: 30,
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  'Contact',
                                  style: AppTextStyles.s11W400(),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Divider(
                        thickness: 1.50,
                        height: 20,
                        indent: 35,
                        endIndent: 35,
                        color: AppColors.colorGreyD9D9D9,
                      ),
                      const Row(
                        children: [],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
  );
}
