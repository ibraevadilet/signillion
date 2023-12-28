import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:signillion/core/images/app_images.dart';
import 'package:signillion/theme/app_colors.dart';
import 'package:signillion/theme/app_text_styles.dart';
import 'package:signillion/widgets/buttun_dateil.dart';
import 'package:signillion/widgets/document_settings_sheet.dart';

class ListDocumentsItem extends StatelessWidget {
  const ListDocumentsItem({
    super.key,
    this.isActive = true,
    this.isActiveButton = false,
    this.bottom,
    this.title,
    this.mb,
    this.top,
    this.heightIcon,
  });

  final String? title;
  final String? mb;
  final bool isActive;
  final bool isActiveButton;
  final double? bottom;
  final double? top;
  final double? heightIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: top ?? 20,
        left: 20,
        right: 20,
        bottom: bottom ?? 0,
      ),
      child: Row(
        children: [
          Column(
            children: [
              SvgPicture.asset(
                AppImages.docMainSvg,
              ),
              const SizedBox(height: 15),
            ],
          ),
          const SizedBox(width: 22),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title ?? 'CR7 Agreement',
                style: AppTextStyles.s16WBold(),
              ),
              Text(
                'Jan 30, 2023 at 10:15PM',
                style: AppTextStyles.s14Wbold(
                  color: Colors.black.withOpacity(0.52),
                ),
              ),
              const SizedBox(height: 2),
              Text(
                mb ?? '',
                style: AppTextStyles.s14Wbold(
                  color: Colors.black.withOpacity(0.52),
                ),
              ),
            ],
          ),
          const Spacer(),
          Column(
            children: [
              isActiveButton
                  ? ButtunDateil(
                      onPressed: () {},
                      text: 'Signed',
                      color: AppColors.color3EAE8F,
                      colorTwo: AppColors.color3EAE8F,
                    )
                  : isActive
                      ? InkWell(
                          onTap: () {
                            showDocumentSettingsSheet(context);
                          },
                          child: SvgPicture.asset(AppImages.moreIconSvg),
                        )
                      : const SizedBox(),
              SizedBox(height: heightIcon ?? 0),
            ],
          ),
        ],
      ),
    );
  }
}
