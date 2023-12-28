import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:signillion/core/images/app_images.dart';
import 'package:signillion/features/document_view/presentation/document_edit_screens/widgets/show_add_signature_sheet.dart';
import 'package:signillion/theme/app_colors.dart';
import 'package:signillion/theme/app_text_styles.dart';

Future<Widget?> showSelectSignatureSheet(BuildContext context) async {
  Widget? resultWidget;
  await showModalBottomSheet(
    context: context,
    builder: (context) => SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Divider(
            thickness: 1.50,
            height: 1,
            color: AppColors.colorGreyD9D9D9,
          ),
          const SizedBox(height: 20),
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
                'Select Signature',
                style: AppTextStyles.s18Wbold(
                  color: AppColors.color100Blue0921B0,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 15),
                child: Opacity(
                  opacity: 0,
                  child: Icon(
                    Icons.arrow_back_ios_new_rounded,
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
                    onTap: () {
                      resultWidget = SvgPicture.asset(
                        AppImages.pochIconSvg,
                      );
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 68,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColors.colorGreyTwo,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          AppImages.pochIconSvg,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: InkWell(
                    onTap: () async {
                      final result = await showAddSignatureSheet(context);
                      resultWidget = result;
                      if (result != null) {
                        Navigator.pop(context);
                      }
                    },
                    child: Container(
                      height: 68,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColors.colorGreyTwo,
                      ),
                      child: Center(
                        child: Text(
                          'Add Signature',
                          style: AppTextStyles.s12W400(
                            color: AppColors.color100Blue0921B0,
                          ),
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
  return resultWidget;
}
