import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:signillion/core/formatters/shapes.dart';
import 'package:signillion/core/images/app_images.dart';
import 'package:signillion/features/pages/edit/edit_draw_signature.dart';
import 'package:signillion/features/pages/edit/edit_type.dart';
import 'package:signillion/theme/app_colors.dart';
import 'package:signillion/theme/app_text_styles.dart';
import 'package:signillion/widgets/spaces.dart';

Future<void> showEditTwoSheet(BuildContext context) async {
  await showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    shape: AppShapes.bottomNavigatorShape(),
    builder: (context) => DraggableScrollableSheet(
        maxChildSize: 0.2 + 0.05,
        minChildSize: 0.1,
        initialChildSize: 0.2 + 0.05,
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
                      const SizedBox(height: 40),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const EdiDrawPage(),
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            const SizedBox(width: 20),
                            SvgPicture.asset(
                              AppImages.drawIconSvg,
                              width: 30,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              'Draw Signature',
                              style: AppTextStyles.s16W500(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const EdiTypePage(),
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            const SizedBox(width: 23),
                            SvgPicture.asset(
                              AppImages.abcIconSvg,
                              width: 25,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              'Type Signature',
                              style: AppTextStyles.s16W500(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      InkWell(
                        onTap: () {},
                        child: Row(
                          children: [
                            const SizedBox(width: 26),
                            SvgPicture.asset(
                              AppImages.uploadIconSvg,
                              width: 16,
                            ),
                            const SizedBox(width: 15),
                            Text(
                              'Upload Signature',
                              style: AppTextStyles.s16W500(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
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
