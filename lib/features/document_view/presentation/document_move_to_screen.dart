import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:signillion/core/images/app_images.dart';
import 'package:signillion/features/document_view/presentation/widgets/document_header.dart';
import 'package:signillion/theme/app_colors.dart';
import 'package:signillion/theme/app_text_styles.dart';

@RoutePage()
class DocumentMoveToScreen extends StatelessWidget {
  const DocumentMoveToScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const DocumentHeader(),
      bottomNavigationBar: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Divider(
              thickness: 1.50,
              height: 30,
              color: AppColors.colorGreyD9D9D9,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: AppColors.color100Blue0921B0,
                    ),
                  ),
                ),
                Text(
                  'Move to',
                  style: AppTextStyles.s18Wbold(
                    color: AppColors.color100Blue0921B0,
                  ),
                ),
                const Opacity(
                  opacity: 0,
                  child: Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: AppColors.color100Blue0921B0,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 45, right: 45),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 68,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.colorGreyTwo,
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                AppImages.templatesIconSvg,
                                color: Colors.black,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                'Templates',
                                style: AppTextStyles.s17W400(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 68,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.colorGreyTwo,
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                AppImages.tasksIconSvg,
                                color: Colors.black,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                'Tasks',
                                style: AppTextStyles.s17W400(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
