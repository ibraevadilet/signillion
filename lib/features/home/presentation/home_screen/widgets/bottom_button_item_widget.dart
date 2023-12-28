import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:signillion/core/images/app_images.dart';
import 'package:signillion/theme/app_colors.dart';
import 'package:signillion/theme/app_text_styles.dart';
import 'package:signillion/widgets/spaces.dart';

class BottomButtomItem extends StatelessWidget {
  const BottomButtomItem({
    super.key,
    this.right = false,
    this.isSelected = false,
    required this.title,
    required this.onTap,
    this.onTapTwo,
    this.image,
  });

  final bool right;
  final bool isSelected;
  final String title;
  final String? image;
  final Function() onTap;
  final Function()? onTapTwo;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: IntrinsicHeight(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              width: 1,
              color: AppColors.colorGreyD9D9D9,
            ),
            borderRadius: right
                ? const BorderRadius.only(
                    topRight: Radius.circular(12),
                  )
                : const BorderRadius.only(
                    topLeft: Radius.circular(12),
                  ),
          ),
          child: Column(
            children: [
              InkWell(
                onTap: onTapTwo ?? () {},
                child: const Column(
                  children: [
                    SizedBox(height: 12),
                    Icon(Icons.add),
                    SizedBox(height: 12),
                  ],
                ),
              ),
              const Divider(height: 1, thickness: 1),
              InkWell(
                onTap: onTap,
                child: Column(
                  children: [
                    const SizedBox(height: 16),
                    SvgPicture.asset(
                      image ?? AppImages.archiveIconSvg,
                      height: 30,
                      color: isSelected
                          ? AppColors.colorBlue0821AE
                          : AppColors.colorGrey474747,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      title,
                      style: AppTextStyles.s14W400(
                        color: isSelected ? AppColors.colorBlue0821AE : null,
                      ),
                    ),
                    SizedBox(height: context.hasBottomPadding ? 40 : 12),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
