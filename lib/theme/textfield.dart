import 'package:flutter/material.dart';
import 'package:contact_list_app/theme/color.dart';

class TextFieldTheme {
  static InputDecorationTheme getTextFieldStyle() => InputDecorationTheme(
      suffixIconColor: appPrimaryColor,
      enabledBorder: TextFieldTheme.getOutlineBorder(isError: false),
      focusedBorder:
      TextFieldTheme.getOutlineBorder(isError: false, width: 2.2),
      errorBorder: TextFieldTheme.getOutlineBorder(isError: true),
      focusedErrorBorder: TextFieldTheme.getOutlineBorder(isError: true));

  static OutlineInputBorder getOutlineBorder(
      {required bool isError, double width = 1.5}) {
    if (isError) {
      return OutlineInputBorder(
        borderSide: BorderSide(color: redColor, width: width),
      );
    }
    return OutlineInputBorder(
        borderSide: BorderSide(color: appPrimaryColor, width: width));
  }
}