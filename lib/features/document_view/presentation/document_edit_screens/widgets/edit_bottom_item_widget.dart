import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:signillion/core/images/app_images.dart';
import 'package:signillion/theme/app_colors.dart';
import 'package:signillion/theme/app_text_styles.dart';

class EditBottomItemWidget extends StatelessWidget {
  const EditBottomItemWidget({
    super.key,
    this.title,
    this.icon,
    this.onTap,
    this.widthIcon,
    this.height,
  });

  final String? title;
  final String? icon;
  final double? widthIcon;
  final double? height;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? () {},
      child: Container(
        width: 60,
        height: 60,
        decoration: const BoxDecoration(
          color: AppColors.colorGreyTwo,
        ),
        child: Column(
          children: [
            SizedBox(height: height ?? 11),
            SvgPicture.asset(
              icon ?? AppImages.kaIconSvg,
              width: widthIcon ?? 18,
            ),
            const SizedBox(height: 4),
            Text(
              title ?? 'Signature',
              style: AppTextStyles.s11W400(
                color: AppColors.colorGrey474747,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
