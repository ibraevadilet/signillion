import 'package:flutter/material.dart';
import 'package:signillion/theme/app_colors.dart';
import 'package:signillion/theme/app_text_styles.dart';

class CancelDoneWidgets extends StatelessWidget {
  const CancelDoneWidgets({super.key, required this.onDone});
  final Function() onDone;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 70, left: 12, right: 25),
          child: Row(
            children: [
              const SizedBox(width: 10),
              InkWell(
                onTap: () => Navigator.pop(context),
                child: Text(
                  'Cancel',
                  style:
                      AppTextStyles.s16W500(color: AppColors.colorBlue0821AE),
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: onDone,
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
          thickness: 1.50,
          height: 30,
          color: AppColors.colorGreyD9D9D9,
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
