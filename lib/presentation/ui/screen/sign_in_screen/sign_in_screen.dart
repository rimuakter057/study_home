import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_home/common/sign_in_up/sign_in_form.dart' show SignInForm;
import 'package:study_home/common/styles/spacing_styles.dart';
import 'package:study_home/presentation/ui/screen/sign_in_screen/widget/form_divider.dart';
import 'package:study_home/presentation/ui/screen/sign_in_screen/widget/sign_in_header.dart';
import 'package:study_home/common/sign_in_up/social_button.dart';
import 'package:study_home/presentation/utils/constants/app_texts.dart';
import 'package:study_home/presentation/utils/helper/helper_function.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Widget gap = SizedBox(height: 10);
    final dark = AppHelperFunction.isDarkMode();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyles.paddingWithAppbarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SignInHeader(),
              SignInForm(gap: gap),
              FormDivider(dark: dark,text: AppTexts.orSignInWith.capitalize!,),
              SocialButton(dark: dark)
            ],
          ),
        ),
      ),
    );
  }
}








