import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:signillion/core/formatters/input_borders.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.inputFormatters,
    this.labelText,
    this.controller,
    this.keyboardType,
    this.obscureText = false,
    this.validator,
    this.isOutline = true,
    this.hintText,
  });

  final List<TextInputFormatter>? inputFormatters;
  final String? labelText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String? Function(String?)? validator;
  final bool isOutline;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: inputFormatters,
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        border: AppInputBorders.outlineBorderColor10Grey004646Width1Radius12,
        enabledBorder:
            AppInputBorders.outlineBorderColor10Grey004646Width1Radius12,
        focusedBorder:
            AppInputBorders.outlineBorderColor100Black101820Width1Radius12,
        focusedErrorBorder:
            AppInputBorders.outlineBorderColor100Black101820Width1Radius12,
        errorBorder:
            AppInputBorders.outlineBorderColor100Black101820Width1Radius12,
      ),
    );
  }
}
