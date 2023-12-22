import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:signillion/core/formatters/input_borders.dart';
import 'package:signillion/theme/app_colors.dart';

class TextFiledWithIcon extends StatelessWidget {
  const TextFiledWithIcon({
    super.key,
    required this.icon,
    this.inputFormatters,
    this.labelText,
    this.controller,
    this.keyboardType,
    this.obscureText = false,
    this.validator,
    this.hintText,
  });

  final List<TextInputFormatter>? inputFormatters;
  final String? labelText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String? Function(String?)? validator;
  final String? hintText;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 58,
          width: 58,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
            color: AppColors.colorBlue0063BE,
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: SvgPicture.asset(icon),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 58,
            child: TextFormField(
              inputFormatters: inputFormatters,
              controller: controller,
              keyboardType: keyboardType,
              obscureText: obscureText,
              validator: validator,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                hintText: hintText,
                labelText: labelText,
                border: AppInputBorders
                    .outlineBorderColor10Grey004646Width1Radius12RIGHT,
                enabledBorder: AppInputBorders
                    .outlineBorderColor10Grey004646Width1Radius12RIGHT,
                focusedBorder: AppInputBorders
                    .outlineBorderColor100Black101820Width1Radius12RIGHT,
                focusedErrorBorder: AppInputBorders
                    .outlineBorderColor100Black101820Width1Radius12RIGHT,
                errorBorder: AppInputBorders
                    .outlineBorderColor100Black101820Width1Radius12RIGHT,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
