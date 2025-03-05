import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_home/common/sign_in_up/form_divider.dart';
import 'package:study_home/common/sign_in_up/social_button.dart';
import 'package:study_home/presentation/ui/screen/auth_screen/sign_in_screen/sign_in_screen.dart';
import 'package:study_home/presentation/ui/screen/auth_screen/sign_up_screen/widget/sign_in_section.dart';
import 'package:study_home/presentation/ui/screen/auth_screen/sign_up_screen/widget/sign_up_form.dart';
import 'package:study_home/presentation/ui/screen/auth_screen/sign_up_screen/widget/term_condition_check.dart';
import 'package:study_home/presentation/ui/screen/auth_screen/verify_email_screen/verify_email_screen.dart';
import 'package:study_home/presentation/utils/constants/app_texts.dart';
import 'package:study_home/presentation/utils/constants/size/sizes.dart';
import 'package:study_home/presentation/utils/constants/size/text_styles.dart';


class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ///title
              Text(
                AppTexts.signupTitle,
                style: AppTextStyles.signUpTitleStyle(context),
              ),
              SizedBox(height: AppSizes.spaceBtwSections),

              ///form
              SignUpForm(),
              ///terms condition checkbox
              TermConditionCheck(),

              SizedBox(height: AppSizes.spaceBtwSections),

              ///sign up button
              ElevatedButton(
                onPressed: () {
                  Get.to(VerifyEmailScreen());
                },
                child: Text(AppTexts.createAccount),
              ),
              SizedBox(height: AppSizes.spaceBtwSections),
              ///divider
              FormDivider( text: AppTexts.onSignUpWith.capitalize!,),
              SizedBox(height: AppSizes.spaceBtwItems),
              ///social button
              SocialButton(),
              SizedBox(height: AppSizes.spaceBtwSections),
              ///sign in section
              SignInUpSection(context: context,),
            ],
          ),
        ),
      ),
    );
  }
}




