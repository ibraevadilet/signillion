import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:signillion/core/images/app_images.dart';
import 'package:signillion/features/pages/show_dateil/delete_show.dart';
import 'package:signillion/theme/app_colors.dart';
import 'package:signillion/theme/app_text_styles.dart';
import 'package:signillion/widgets/app_unfocuser.dart';

class DeletePage extends StatefulWidget {
  const DeletePage({super.key});
  @override
  State<DeletePage> createState() => _DeletePageState();
}

class _DeletePageState extends State<DeletePage> {
  @override
  Widget build(BuildContext context) {
    return AppUnfocuser(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70, left: 12, right: 25),
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  Text(
                    'doc_name',
                    style: AppTextStyles.s20Wbold(
                        color: AppColors.colorBlue0821AE),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      showDeleteSheet(context);
                    },
                    child: Text(
                      'Done',
                      style: AppTextStyles.s16W500(
                          color: AppColors.colorBlue0821AE),
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
            Center(
              heightFactor: 1.50,
              child: SvgPicture.asset(
                AppImages.listIcnoSvg,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
