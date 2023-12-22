import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:signillion/theme/app_colors.dart';
import 'package:signillion/theme/app_text_styles.dart';
import 'package:signillion/widgets/app_unfocuser.dart';
import 'package:signillion/widgets/custom_app_bar.dart';
import 'package:signillion/widgets/custom_button.dart';
import 'package:signillion/widgets/custom_text_fields.dart';

@RoutePage()
class ForgetScreen extends StatelessWidget {
  const ForgetScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return AppUnfocuser(
      child: Scaffold(
        appBar: const CustomAppBar(
          title: 'Forget password',
          icon: Icon(
            Icons.chevron_left_rounded,
            size: 35,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomTextField(
                labelText: 'Email',
              ),
              const SizedBox(height: 14),
              Text(
                '* This email address have no account',
                style: AppTextStyles.s16W400(
                  color: const Color.fromARGB(255, 239, 16, 0),
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 14),
              Text(
                'Enters the email address you used to register with Dynamic Layers. You will receive an email to define a new password.',
                style: AppTextStyles.s14W400(color: AppColors.colorGrey474747),
              ),
              const SizedBox(height: 20),
              CustomButton(
                color: AppColors.colorBlue0821AE,
                onPress: () {},
                text: 'Define new password',
                textStyle: AppTextStyles.s16WBold(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

