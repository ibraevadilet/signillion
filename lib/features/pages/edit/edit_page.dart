import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:signillion/core/images/app_images.dart';
import 'package:signillion/features/pages/edit/edit_dateil_page.dart';
import 'package:signillion/features/pages/edit/widget/edit_dateil_widget.dart';
import 'package:signillion/features/pages/show_dateil/edit_show.dart';
import 'package:signillion/theme/app_colors.dart';
import 'package:signillion/theme/app_text_styles.dart';
import 'package:signillion/widgets/app_unfocuser.dart';

class EditPage extends StatefulWidget {
  const EditPage({super.key});
  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
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
                      showEditSheet(context);
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
            const Spacer(),
            const Divider(
              thickness: 1.50,
              height: 30,
              color: AppColors.colorGreyD9D9D9,
            ),
            Row(
              children: [
                const SizedBox(width: 23),
                EditDateilWidget(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EditDateilPage(),
                      ),
                    );
                  },
                  title: 'Signature',
                  icon: AppImages.kaIconSvg,
                ),
                const SizedBox(width: 11),
                EditDateilWidget(
                  onTap: () {},
                  icon: AppImages.aaIconSvg,
                  widthIcon: 30,
                  title: 'Initials',
                  height: 13,
                ),
                const SizedBox(width: 11),
                EditDateilWidget(
                  onTap: () {},
                  icon: AppImages.smsTIconSvg,
                  title: 'Text',
                ),
                const SizedBox(width: 11),
                EditDateilWidget(
                  onTap: () {},
                  icon: AppImages.chIconSvg,
                  title: 'Date',
                ),
                const SizedBox(width: 12),
                EditDateilWidget(
                  onTap: () {},
                  icon: AppImages.btIconSvg,
                  widthIcon: 13.50,
                  title: 'Stamp',
                ),
              ],
            ),
            const SizedBox(height: 17),
          ],
        ),
      ),
    );
  }
}
