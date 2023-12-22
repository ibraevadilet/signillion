import 'package:flutter/material.dart';

abstract class AppTextStyles {
  static TextStyle s12W400({Color? color}) => TextStyle(
        color: color ?? Colors.black,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      );
  static TextStyle s14W400({Color? color}) => TextStyle(
        color: color ?? Colors.black,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      );
  static TextStyle s14Wbold({Color? color}) => TextStyle(
        color: color ?? Colors.black,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      );
  static TextStyle s15W400({Color? color}) => TextStyle(
        color: color ?? Colors.black,
        fontSize: 15,
        fontWeight: FontWeight.w400,
      );
  static TextStyle s15W600({Color? color}) => TextStyle(
        color: color ?? Colors.black,
        fontSize: 15,
        fontWeight: FontWeight.w600,
      );
  static TextStyle s16W400({Color? color, double? fontSize}) => TextStyle(
        color: color ?? Colors.black,
        fontSize: fontSize ?? 16,
        fontWeight: FontWeight.w400,
      );
  static TextStyle s16W500({Color? color}) => TextStyle(
        color: color ?? Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );
  static TextStyle s16WBold({Color? color}) => TextStyle(
        color: color ?? Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      );
  static TextStyle s18W700({Color? color}) => TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: color ?? Colors.black,
      );
  static TextStyle s17W600({Color? color}) => TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w600,
        color: color ?? Colors.black,
      );

  static TextStyle s24W900({Color? color}) => TextStyle(
        fontSize: 24,
        color: color ?? Colors.black,
        fontWeight: FontWeight.w900,
      );
  static TextStyle s24W700({Color? color}) => TextStyle(
        fontSize: 24,
        color: color ?? Colors.black,
        fontWeight: FontWeight.w700,
      );
  static TextStyle s20W700({Color? color}) => TextStyle(
        fontSize: 20,
        color: color ?? Colors.black,
        fontWeight: FontWeight.w700,
      );
  static TextStyle s28W900({Color? color}) => TextStyle(
        fontSize: 28,
        color: color ?? Colors.black,
        fontWeight: FontWeight.w900,
      );
  static TextStyle s60W900({Color? color}) => TextStyle(
        fontSize: 60,
        color: color ?? Colors.black,
        fontWeight: FontWeight.w900,
      );
}
