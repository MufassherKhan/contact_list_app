import 'package:flutter/material.dart';
import 'package:contact_list_app/theme/color.dart';

class AppbarStyle {
  static AppBarTheme getAppBarTheme() => const AppBarTheme(
        backgroundColor: appPrimaryColor,
        foregroundColor: whiteColor,
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      );
}
