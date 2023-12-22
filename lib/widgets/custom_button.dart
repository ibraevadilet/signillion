import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signillion/theme/app_text_styles.dart';
import 'package:signillion/widgets/app_indicator.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    this.text,
    required this.color,
    required this.onPress,
    Key? key,
    this.width = double.infinity,
    this.isFullFilled = true,
    this.isLoading = false,
    this.contentPadding = 14.0,
    this.aroundButtonPadding = EdgeInsets.zero,
    this.height = 56,
    this.radius = 12.0,
    this.textStyle,
    this.child,
    this.borderColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  final double? width;
  final double height;
  final double contentPadding;
  final EdgeInsetsGeometry aroundButtonPadding;
  final Color color;
  final Color textColor;
  final Color? borderColor;
  final bool isFullFilled;
  final double radius;
  final bool isLoading;
  final TextStyle? textStyle;
  final String? text;
  final Function() onPress;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: aroundButtonPadding,
      child: CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: isLoading ? null : onPress,
        child: Container(
          alignment: Alignment.center,
          height: height,
          width: width,
          padding: EdgeInsets.all(contentPadding),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(radius),
            border: borderColor != null
                ? Border.all(
                    color: borderColor!,
                  )
                : null,
          ),
          child: isLoading
              ? const AppIndicator(color: Colors.white)
              : child ??
                  Text(
                    text!,
                    textAlign: TextAlign.center,
                    style: textStyle ??
                        AppTextStyles.s17W600(
                          color: textColor,
                        ),
                  ),
        ),
      ),
    );
  }
}
