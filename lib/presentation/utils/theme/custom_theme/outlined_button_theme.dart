

import 'package:flutter/material.dart';
import 'package:study_home/presentation/utils/constants/color.dart';


class AppOutlinedButtonTheme{
  AppOutlinedButtonTheme._();
  static final lightOutlinedButtonThemeData = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.black,
        fixedSize:const Size.fromWidth(double .maxFinite),
        side: BorderSide(color: Colors.blue),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600,color: AppColors.black),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14), // Rounded corners
        ),
      )
  );
  static final darkOutlinedButtonThemeData = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.white,
        fixedSize:const Size.fromWidth(double .maxFinite),
        side: BorderSide(color: Colors.blueAccent),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600,color: AppColors.white),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14), // Rounded corners
        ),
      )
  );
}