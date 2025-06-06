import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:study_home/presentation/utils/theme/theme.dart';
import '../presentation/ui/screen/auth_screen/sign_in_screen/sign_in_screen.dart';
import '../presentation/ui/screen/mobile_screen/home_screen/home_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../presentation/ui/screen/mobile_screen/main_nav_screen.dart';


class StudyHome extends StatelessWidget {
  const StudyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('bn'), // bangle
      ],
          locale: Locale('bn'),

      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      //darkTheme: AppTheme.darkTheme,
      //themeMode:ThemeMode.system ,
      home: SignInScreen(),
    );
  }
}
