
import 'package:flutter/material.dart';
import 'package:study_home/presentation/utils/constants/color.dart';


class AppElevatedButtonTheme{
  AppElevatedButtonTheme._();
  static final lightElevatedButtonThemeData = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
  backgroundColor: Colors.blue,
    fixedSize:const Size.fromWidth(double .maxFinite),// Background color
  foregroundColor: Colors.white,
    disabledBackgroundColor: AppColors.grey,
    disabledForegroundColor: AppColors.grey,// Text color
    side: BorderSide(color: Colors.blue),
  padding: EdgeInsets.symmetric( vertical: 18),
  textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600,color: AppColors.white),
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(12), // Rounded corners
  ),
  )
  );
  static final darkElevatedButtonThemeData = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        fixedSize:const Size.fromWidth(double .maxFinite),
        backgroundColor: AppColors.white, // Background color
        foregroundColor: Colors.blue,
        disabledBackgroundColor: AppColors.grey,
        disabledForegroundColor: AppColors.grey,// Text color
        side: BorderSide(color: Colors.blue),
        padding: EdgeInsets.symmetric( vertical: 18),
        textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600,color: AppColors.white),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // Rounded corners
        ),
      )
  );
}