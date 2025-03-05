
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_home/common/styles/spacing_styles.dart';
import 'package:study_home/presentation/ui/screen/auth_screen/reset_password/reset_password_screen.dart';
import 'package:study_home/presentation/utils/constants/app_texts.dart';
import 'package:study_home/presentation/utils/constants/size/sizes.dart';
import 'package:study_home/presentation/utils/constants/size/text_styles.dart';
class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:SingleChildScrollView(child: Padding(
        padding:EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(children: [
          /// heading
          Text(AppTexts.forgetPasswordTitle,style: AppTextStyles.forgetPasswordTitleStyle(context),),
          Text(AppTexts.forgetPasswordSubTitle,style: AppTextStyles.forgetPasswordSubTitleStyle(context),),
          SizedBox(height: AppSizes.spaceBtwSections*2,),
          /// text field
          TextFormField(
            decoration: InputDecoration(
              labelText: AppTexts.email,
              prefixIcon: Icon(Icons.attach_email_outlined)
            ),
          ),

          SizedBox(height: AppSizes.spaceBtwSections,),
          /// submit button
          ElevatedButton(
            onPressed: () {
              Get.to(ResetPasswordScreen());
            },
            child: Text(AppTexts.submit),
          ),
        ],),
      ))
    );
  }
}
