

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_home/presentation/ui/screen/sign_in_screen/sign_in_screen.dart';
import 'package:study_home/presentation/ui/screen/sign_up_screen/sign_up_screen.dart';
import 'package:study_home/presentation/utils/theme/theme.dart';



class StudyHome extends StatelessWidget {
  const StudyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode:ThemeMode.system ,
      home: SignUpScreen(),
    );
  }
}
