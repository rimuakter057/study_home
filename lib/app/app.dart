import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_home/presentation/ui/screen/auth_screen/sign_in_screen/sign_in_screen.dart';
import 'package:study_home/presentation/ui/screen/auth_screen/sign_up_screen/sign_up_screen.dart';
import 'package:study_home/presentation/ui/screen/auth_screen/success_screen/success_screen.dart';
import 'package:study_home/presentation/ui/screen/auth_screen/verify_email_screen/verify_email_screen.dart';
import 'package:study_home/presentation/utils/theme/theme.dart';

import '../presentation/ui/screen/auth_screen/forget_password_screen/forget_password_screen.dart';



class StudyHome extends StatelessWidget {
  const StudyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode:ThemeMode.system ,
      home: ForgetPassword(),
    );
  }
}
