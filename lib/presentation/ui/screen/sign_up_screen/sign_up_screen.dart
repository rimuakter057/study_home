
import 'package:flutter/material.dart';
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
        child: Padding(padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          children: [
            ///title
            Text(AppTexts.signupTitle,style: AppTextStyles.signUpTitleStyle(context)),
          ],
        ),
        ),
      ),
    );
  }
}
