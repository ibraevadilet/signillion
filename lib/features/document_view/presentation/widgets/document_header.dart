import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:signillion/core/images/app_images.dart';
import 'package:signillion/theme/app_colors.dart';
import 'package:signillion/theme/app_text_styles.dart';

class DocumentHeader extends StatelessWidget {
  const DocumentHeader({super.key, this.onTap});
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 12, right: 25),
            child: Row(
              children: [
                const SizedBox(width: 10),
                Text(
                  'doc_name',
                  style:
                      AppTextStyles.s20Wbold(color: AppColors.colorBlue0821AE),
                ),
                const Spacer(),
                InkWell(
                  onTap: onTap ??
                      () {
                        Navigator.pop(context);
                      },
                  child: Text(
                    'Done',
                    style:
                        AppTextStyles.s16W500(color: AppColors.colorBlue0821AE),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 1,
            height: 30,
            color: AppColors.colorGrey,
          ),
          Expanded(
            child: SvgPicture.asset(
              AppImages.listIcnoSvg,
            ),
          ),
        ],
      ),
    );
  }
}
