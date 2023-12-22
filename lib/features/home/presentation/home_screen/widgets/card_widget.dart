import 'package:flutter/material.dart';
import 'package:signillion/theme/app_colors.dart';
import 'package:signillion/theme/app_text_styles.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.isSelected,
    required this.count,
    required this.title,
    required this.subTitle,
    required this.onTap,
  });

  final bool isSelected;
  final int count;
  final String title;
  final String subTitle;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Card(
          color: isSelected
              ? AppColors.colorBlueDDE8FD
              : AppColors.colorGreyEAEAEA,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Column(
              children: [
                Text(
                  count.toString(),
                  style: AppTextStyles.s60W900(
                      color: AppColors.color100Blue0921B0),
                ),
                Text(
                  title,
                  style: AppTextStyles.s16WBold(),
                  textAlign: TextAlign.center,
                ),
                Text(
                  subTitle,
                  style: AppTextStyles.s16WBold(),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
