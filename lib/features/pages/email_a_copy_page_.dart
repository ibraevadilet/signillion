import 'package:flutter/material.dart';
import 'package:signillion/theme/app_colors.dart';
import 'package:signillion/theme/app_text_styles.dart';
import 'package:signillion/widgets/app_unfocuser.dart';
import 'package:signillion/widgets/custom_button.dart';
import 'package:signillion/widgets/custom_text_fields_Two.dart';

class EmailACopyPage extends StatefulWidget {
  const EmailACopyPage({super.key});
  @override
  State<EmailACopyPage> createState() => _InviteToSingPageState();
}

class _InviteToSingPageState extends State<EmailACopyPage> {
  final TextEditingController controllerOne = TextEditingController();
  final TextEditingController controllerTwo = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AppUnfocuser(
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, top: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: AppColors.colorBlue0821AE,
                      ),
                    ),
                    const SizedBox(width: 3),
                    Text(
                      'Email a copy',
                      style: AppTextStyles.s26W700(
                          color: AppColors.colorBlue0821AE),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 26, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'from:',
                            style: AppTextStyles.s15W400(
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(width: 6),
                          Text(
                            'ivan.borisov@gmail.com',
                            style: AppTextStyles.s15W400(
                              color: AppColors.colorBlack424B56,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'send copy to:',
                        style: AppTextStyles.s15W400(
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(right: 24),
                        child: Column(
                          children: [
                            CustomTextFieldTwo(
                              controller: controllerOne,
                              fillColor: AppColors.colorGreyEAEAEA,
                              isFilled: true,
                              widthBorder: 0,
                              hintText: 'Add recipient',
                            ),
                            const SizedBox(height: 20),
                            CustomTextFieldTwo(
                              heightContai: 140,
                              maxLines: 5,
                              controller: controllerTwo,
                              fillColor: AppColors.colorGreyEAEAEA,
                              isFilled: true,
                              widthBorder: 0,
                              hintText: 'Add description',
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 50),
                      CustomButton(
                        contentPadding: 0,
                        width: 104,
                        height: 35,
                        color: AppColors.colorBlue0821AE,
                        onPress: () {},
                        child: Text(
                          'Send',
                          style: AppTextStyles.s14Wbold(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
