
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_home/presentation/ui/screen/auth_screen/sign_in_screen/sign_in_screen.dart';
import 'package:study_home/presentation/ui/screen/auth_screen/success_screen/success_screen.dart';
import 'package:study_home/presentation/utils/constants/app_texts.dart';
import 'package:study_home/presentation/utils/constants/color.dart';
import 'package:study_home/presentation/utils/constants/image_strings.dart';
import 'package:study_home/presentation/utils/constants/size/sizes.dart';
import 'package:study_home/presentation/utils/constants/size/text_styles.dart';
import 'package:study_home/presentation/utils/helper/helper_function.dart';
class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
        IconButton(onPressed: (){
         Get.offAll(SignInScreen());
        },
            icon: Icon(Icons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              ///image
              Image(image: AssetImage(AppImages.verifyEmail),
              width: AppHelperFunction.screenWidth()*0.6,
              ),
              SizedBox(height: AppSizes.spaceBtwSections,),
              ///title and subtitle
              Text(
                  textAlign: TextAlign.center,
                  AppTexts.confirmEmail,style: AppTextStyles.titleStyle(context),),
              SizedBox(height: AppSizes.spaceBtwItems,),
              Text(
                textAlign: TextAlign.center,
                'email334@gmail.com',style: AppTextStyles.verifyEmailSubTitleStyle(context),),
              SizedBox(height: AppSizes.spaceBtwItems,),
              Text(
                textAlign: TextAlign.center,
                AppTexts.confirmEmailSubTitle,style: AppTextStyles.verifyEmailSubTitleStyle(context,color: AppColors.grey),),
              ///buttons
              SizedBox(height: AppSizes.spaceBtwSections,),
              ElevatedButton(
                onPressed: () {
                  Get.to(SuccessScreen());
                },
                child: Text(AppTexts.continueT),
              ),
              SizedBox(height: AppSizes.spaceBtwItems,),
              TextButton(onPressed: (){}, child: Text(AppTexts.resendEmail))
            ],
          ),
        ),
      ),
    );
  }
}
