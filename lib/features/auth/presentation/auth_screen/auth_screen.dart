import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:signillion/core/functions/push_router_func.dart';
import 'package:signillion/core/images/app_images.dart';
import 'package:signillion/routes/mobile_auto_router.gr.dart';
import 'package:signillion/theme/app_colors.dart';
import 'package:signillion/theme/app_text_styles.dart';
import 'package:signillion/widgets/app_unfocuser.dart';
import 'package:signillion/widgets/custom_button.dart';
import 'package:signillion/widgets/spaces.dart';
import 'package:signillion/widgets/text_field_with_icon.dart';

@RoutePage()
class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return AppUnfocuser(
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: SizedBox(
              height: context.height - 50,
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
                  const SizedBox(height: 22),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TextFiledWithIcon(
                          icon: AppImages.emailIconSvg,
                          hintText: 'Email',
                        ),
                        const SizedBox(height: 12),
                        const TextFiledWithIcon(
                          icon: AppImages.passwordIconSvg,
                          hintText: 'Password',
                        ),
                        const SizedBox(height: 12),
                        Center(
                          child: TextButton(
                            onPressed: () {
                              AppRouting.pushFunction(const ForgetRoute());
                            },
                            child: Text(
                              'Forgot password?',
                              style: AppTextStyles.s14W400(
                                color: AppColors.colorCian,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                        CustomButton(
                          color: AppColors.colorBlue1525B7,
                          onPress: () {
                            AppRouting.pushAndPopUntilFunction(
                              HiddenDrawerRoute(),
                            );
                          },
                          text: 'Login',
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 2,
                              width: 15,
                              color: AppColors.colorCian,
                            ),
                            const SizedBox(width: 15),
                            Text(
                              'Or Login with',
                              style: AppTextStyles.s15W400(
                                color: AppColors.colorGrey474747,
                              ),
                            ),
                            const SizedBox(width: 15),
                            Container(
                              height: 2,
                              width: 15,
                              color: AppColors.colorCian,
                            ),
                          ],
                        ),
                        Center(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 150),
                            child: InkWell(
                              onTap: () {},
                              child: Image.asset(
                                AppImages.googleIconPng,
                              ),
                            ),
                          ),
                        ),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: 'Don’t have an account? ',
                            style: AppTextStyles.s14W400(),
                            children: [
                              TextSpan(
                                text: 'Sign Up',
                                style: AppTextStyles.s14W400(
                                  color: AppColors.colorBlue0063BE,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => AppRouting.pushFunction(
                                      const RegisterRoute()),
                              ),
                            ],
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
      ),
    );
  }
}
