import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:signillion/core/images/app_images.dart';
import 'package:signillion/theme/app_text_styles.dart';
import 'package:signillion/widgets/document_settings_sheet.dart';

class ListDocumentsItem extends StatelessWidget {
  const ListDocumentsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          SvgPicture.asset(
            AppImages.docMainSvg,
          ),
          const SizedBox(width: 22),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'CR7 Agreement',
                style: AppTextStyles.s16WBold(),
              ),
              Text(
                'Jan 30, 2023 at 10:15PM',
                style: AppTextStyles.s14Wbold(
                  color: Colors.black.withOpacity(0.52),
                ),
              ),
            ],
          ),
          const Spacer(),
          InkWell(
            onTap: () {
              showDocumentSettingsSheet(context);
            },
            child: SvgPicture.asset(AppImages.moreIconSvg),
          )
        ],
      ),
    );
  }
}
