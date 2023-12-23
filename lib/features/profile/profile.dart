import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:signillion/core/images/app_images.dart';
import 'package:signillion/theme/app_colors.dart';
import 'package:signillion/theme/app_text_styles.dart';
import 'package:signillion/widgets/bottom_buttons/bottom_buttons.dart';
import 'package:signillion/widgets/custom_button.dart';
import 'package:signillion/widgets/spaces.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomButtons(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: context.width,
              height: 33,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: AppColors.colorGreyEAEAEA,
              ),
              child: Row(
                children: [
                  const SizedBox(width: 20),
                  Text(
                    'Name',
                    style: AppTextStyles.s15W400(
                      color: AppColors.colorBlack424B56,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: context.width,
              height: 33,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: AppColors.colorGreyEAEAEA,
              ),
              child: Row(
                children: [
                  const SizedBox(width: 20),
                  Text(
                    'Surname',
                    style: AppTextStyles.s15W400(
                      color: AppColors.colorBlack424B56,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: context.width,
              height: 33,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: AppColors.colorGreyEAEAEA,
              ),
              child: Row(
                children: [
                  const SizedBox(width: 20),
                  Text(
                    'Email',
                    style: AppTextStyles.s15W400(
                      color: AppColors.colorBlack424B56,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Signature',
                style: AppTextStyles.s15W400(
                  color: AppColors.colorBlack424B56,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Container(
                height: 60,
                width: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.colorGreyEAEAEA,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: CustomButton(
                width: 176,
                height: 49,
                color: AppColors.colorBlue0821AE,
                onPress: () {
                  
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Upload signature',
                      style: AppTextStyles.s15W400(
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 5),
                    SvgPicture.asset(
                      AppImages.penciIconSvg,
                      color: Colors.white,
                      width: 24,
                      height: 24,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
