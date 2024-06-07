import 'package:flutter/material.dart';
import 'package:contact_list_app/theme/color.dart';

class ElevatedButtonStyle{
  static ElevatedButtonThemeData getElevatedButtonStyle() => ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: appPrimaryColor,
          foregroundColor: whiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
          )
      )
  );
}