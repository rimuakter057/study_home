import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_home/presentation/ui/screen/auth_screen/sign_in_screen/widget/sign_in_form.dart';
import 'package:study_home/presentation/ui/screen/auth_screen/sign_in_screen/widget/sign_in_header.dart';
import 'package:study_home/common/styles/spacing_styles.dart';
import 'package:study_home/common/sign_in_up/form_divider.dart';
import 'package:study_home/common/sign_in_up/social_button.dart';
import 'package:study_home/presentation/ui/screen/auth_screen/sign_up_screen/sign_up_screen.dart';
import 'package:study_home/presentation/ui/screen/mobile_screen/main_nav_screen.dart';
import 'package:study_home/presentation/utils/constants/app_texts.dart';
import 'package:study_home/presentation/utils/constants/size/sizes.dart';
import 'package:study_home/presentation/utils/helper/helper_function.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Widget gap = SizedBox(height: 10);
    return Scaffold(
      body:  SingleChildScrollView(
          child: Padding(
            padding: AppSpacingStyles.paddingWithAppbarHeight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SignInHeader(),
                SignInForm(gap: gap),
                ElevatedButton(
                  onPressed: () {
                    Get.offAll(MainNavScreen());
                  },
                  child: Text(AppTexts.signIn),
                ),
                gap,
                //create account button
                OutlinedButton(
                  onPressed: () {
                    Get.to(()=> const SignUpScreen());
                  },
                  child: Text(AppTexts.createAccount),
                ),
                SizedBox(height: AppSizes.spaceBtwSections,),
                FormDivider(text: AppTexts.orSignInWith.capitalize!,),
                SocialButton()
              ],
            ),
          ),
        ),

    );
  }
}








