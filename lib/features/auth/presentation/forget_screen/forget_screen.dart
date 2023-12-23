import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:signillion/theme/app_colors.dart';
import 'package:signillion/theme/app_text_styles.dart';
import 'package:signillion/widgets/app_unfocuser.dart';
import 'package:signillion/widgets/custom_app_bar.dart';
import 'package:signillion/widgets/custom_button.dart';
import 'package:signillion/widgets/custom_text_fields.dart';

@RoutePage()
class ForgetScreen extends StatefulWidget {
  const ForgetScreen({super.key});

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
  String myEmail = 'ibraevadilet3@gmail.com';

  String emailValue = '';
  bool isError = false;
  @override
  Widget build(BuildContext context) {
    return AppUnfocuser(
      child: Scaffold(
        appBar: const CustomAppBar(
          title: 'Forget password',
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextField(
                isError: isError,
                onChanged: (value) {
                  setState(() {
                    emailValue = value;
                    isError = emailValue != myEmail;
                  });
                },
                labelText: 'Email',
              ),
              const SizedBox(height: 14),
              Visibility(
                visible: isError,
                child: Text(
                  '* This email address have no account',
                  style: AppTextStyles.s16W400(
                    color: AppColors.colorRedEF1000,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 14),
              Text(
                'Enters the email address you used to register with Dynamic Layers. You will receive an email to define a new password.',
                style: AppTextStyles.s14W400(color: AppColors.colorGrey474747),
              ),
              const SizedBox(height: 20),
              CustomButton(
                textColor: isError || emailValue.isEmpty
                    ? AppColors.color60Black101820
                    : Colors.white,
                color: isError || emailValue.isEmpty
                    ? AppColors.color20Black101820
                    : AppColors.colorBlue0821AE,
                onPress: () {
                  if (isError || emailValue.isEmpty) {}
                },
                text: 'Define new password',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
