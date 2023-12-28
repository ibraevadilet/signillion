import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:signillion/core/images/app_images.dart';
import 'package:signillion/features/pages/edit/widget/edit_dateil_widget.dart';
import 'package:signillion/features/pages/show_dateil/edit_show.dart';
import 'package:signillion/features/pages/show_dateil/edit_show_Two.dart';
import 'package:signillion/theme/app_colors.dart';
import 'package:signillion/theme/app_text_styles.dart';
import 'package:signillion/widgets/app_unfocuser.dart';

class EditDateilPage extends StatefulWidget {
  const EditDateilPage({super.key});
  @override
  State<EditDateilPage> createState() => _EditDateilPageState();
}

class _EditDateilPageState extends State<EditDateilPage> {
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
                    onTap: () {},
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
                const SizedBox(width: 15),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                  ),
                ),
                const Spacer(),
                Text(
                  'Select Signature',
                  style: AppTextStyles.s18Wbold(
                    color: AppColors.color100Blue0921B0,
                  ),
                ),
                const SizedBox(width: 108),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 45),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      showEditTwoSheet(context);
                    },
                    child: Container(
                      width: 142,
                      height: 68,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColors.colorGreyTwo,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          AppImages.pochIconSvg,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  InkWell(
                    onTap: () {
                      showEditTwoSheet(context);
                    },
                    child: Container(
                      width: 142,
                      height: 68,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColors.colorGreyTwo,
                      ),
                      child: Center(
                        child: Text(
                          'Add Signature',
                          style: AppTextStyles.s12W400(
                            color: AppColors.color100Blue0921B0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 45),
          ],
        ),
      ),
    );
  }
}
