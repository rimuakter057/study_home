import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_home/presentation/ui/screen/auth_screen/sign_in_screen/sign_in_screen.dart';
import 'package:study_home/presentation/utils/constants/app_texts.dart';
import 'package:study_home/presentation/utils/constants/color.dart';

class SignInUpSection extends StatelessWidget {
  const SignInUpSection({
    super.key,
    required this.context,
    this.onTap,

  });

  final BuildContext context;
  final void Function()? onTap;


  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text:  "have account? ",
          style: TextStyle(
            color:Colors.red,
          ),
          children: [
            TextSpan(
              text:  AppTexts.signIn,
              style: TextStyle(
                color: AppColors.primaryColor,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = onTap ??
                        () {
                      Get.offAll(SignInScreen());
                    },
            ),
          ]),
    );
  }
}