import 'package:flutter/material.dart';
import 'package:signillion/theme/app_colors.dart';
import 'package:signillion/theme/app_text_styles.dart';

class HistoryDateil extends StatelessWidget {
  const HistoryDateil({
    super.key,
    this.text,
    this.textOne,
    this.textTwo,
    this.textTrhee,
  });

  final String? text;
  final String? textOne;
  final String? textTwo;
  final String? textTrhee;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(width: 27),
            Column(
              children: [
                Text(
                  text ?? 'Nov 20',
                  style: AppTextStyles.s16WBold(
                    color: AppColors.color100Blue0921B0,
                  ),
                ),
                Text(
                  textOne ?? '12:14 PM',
                  style: AppTextStyles.s10Wbold(
                    color: AppColors.color10Grey797979,
                  ),
                ),
              ],
            ),
            const SizedBox(width: 27),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  textTwo ?? 'ivan.borisov@gmail.com',
                  style: AppTextStyles.s14Wbold(
                    color: Colors.black,
                  ),
                ),
                Text(
                  textTrhee ?? 'Document downloaded',
                  style: AppTextStyles.s14Wbold(
                    color: Colors.black.withOpacity(0.52),
                  ),
                ),
              ],
            ),
          ],
        ),
        const Divider(
          thickness: 1,
          height: 30,
          color: AppColors.colorGreyD9D9D9,
        ),
      ],
    );
  }
}
