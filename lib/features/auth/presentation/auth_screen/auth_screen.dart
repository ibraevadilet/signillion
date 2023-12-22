import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:signillion/core/images/app_images.dart';
import 'package:signillion/theme/app_colors.dart';
import 'package:signillion/theme/app_text_styles.dart';
import 'package:signillion/widgets/app_unfocuser.dart';
import 'package:signillion/widgets/text_field_with_icon.dart';

@RoutePage()
class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return AppUnfocuser(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 22),
              Image.asset(AppImages.logo),
              const SizedBox(height: 22),
              Text(
                'Login to your account',
                style: AppTextStyles.s16WBold(
                  color: AppColors.colorGrey474747,
                ),
              ),
              const SizedBox(height: 12),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 19),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFiledWithIcon(
                      icon: AppImages.emailIconSvg,
                      hintText: 'Email',
                    ),
                    SizedBox(height: 12),
                    TextFiledWithIcon(
                      icon: AppImages.passwordIconSvg,
                      hintText: 'Password',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
