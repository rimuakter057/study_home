

import 'package:flutter/material.dart';
import 'package:study_home/presentation/utils/constants/color.dart';

class AppBottomSheetTheme{
  AppBottomSheetTheme._();
  static  BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
showDragHandle: true,
    backgroundColor: AppColors.white,
    modalBackgroundColor: AppColors.white,
    constraints:BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );
  static  BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: AppColors.black,
    modalBackgroundColor: AppColors.black,
    constraints:BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );


}