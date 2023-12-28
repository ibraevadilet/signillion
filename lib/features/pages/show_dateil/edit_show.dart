import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:signillion/core/formatters/shapes.dart';
import 'package:signillion/core/images/app_images.dart';
import 'package:signillion/theme/app_colors.dart';
import 'package:signillion/theme/app_text_styles.dart';
import 'package:signillion/widgets/spaces.dart';

Future<void> showEditSheet(BuildContext context) async {
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
                      const SizedBox(height: 10),
                      Center(
                        child: Text(
                          'Are you done editing?',
                          style: AppTextStyles.s18Wbold(
                            color: AppColors.colorGrey474747,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      InkWell(
                        onTap: () {},
                        child: Row(
                          children: [
                            const SizedBox(width: 20),
                            SvgPicture.asset(
                              AppImages.saveIconSvg,
                              width: 25,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              'Yes',
                              style: AppTextStyles.s20W400(
                                color: AppColors.colorGrey474747,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 1.50,
                        height: 20,
                        indent: 50,
                        endIndent: 10,
                        color: AppColors.colorGreyD9D9D9,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Row(
                          children: [
                            const SizedBox(width: 20),
                            SvgPicture.asset(
                              AppImages.faIconSvg,
                              width: 30,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              'No',
                              style: AppTextStyles.s20W400(
                                color: AppColors.colorGrey474747,
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
