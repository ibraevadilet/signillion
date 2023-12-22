import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:signillion/features/auth/presentation/register_screen/widgets/password_text_filed.dart';
import 'package:signillion/theme/app_colors.dart';
import 'package:signillion/theme/app_text_styles.dart';
import 'package:signillion/widgets/app_unfocuser.dart';
import 'package:signillion/widgets/custom_app_bar.dart';
import 'package:signillion/widgets/custom_button.dart';
import 'package:signillion/widgets/custom_text_fields.dart';

@RoutePage()
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();

  bool isRightPassword = false;

  bool get allRight =>
      firstNameController.text.isNotEmpty &&
      lastNameController.text.isNotEmpty &&
      emailController.text.isNotEmpty &&
      isRightPassword;

  @override
  Widget build(BuildContext context) {
    return AppUnfocuser(
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomButton(
                  textColor:
                      allRight ? Colors.white : AppColors.color60Black101820,
                  color: allRight
                      ? AppColors.colorBlue0821AE
                      : AppColors.color20Black101820,
                  onPress: () {
                    if (allRight) {}
                  },
                  text: 'Agree and continue',
                ),
              ],
            ),
          ),
        ),
        appBar: const CustomAppBar(
          title: 'Sign up',
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12),
              CustomTextField(
                labelText: 'First name',
                controller: firstNameController,
              ),
              const SizedBox(height: 8),
              CustomTextField(
                labelText: 'Last name',
                controller: lastNameController,
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'Make sure it matches the name on your government ID.',
                  style: AppTextStyles.s14W400(
                    color: AppColors.color60Black101820,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              CustomTextField(
                labelText: 'Email',
                controller: emailController,
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'We will email you trip confirmations and receipts.',
                  style: AppTextStyles.s14W400(
                    color: AppColors.color60Black101820,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              PasswordTextFiled(
                firstName: firstNameController,
                lastName: lastNameController,
                email: emailController,
                password: (password) {
                  setState(() {
                    isRightPassword = password;
                  });
                },
              ),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
