import 'package:flutter/material.dart';

import '../../../../common/widget/custom_text.dart';
import '../../../../utils/asset_path.dart';
import '../../../../utils/color/app_colors.dart';
import '../../../../utils/text/app_size.dart';
import '../../../../utils/text/app_text_styles.dart';

/// drawer header section profile widget
class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: MediaQuery.sizeOf(context).width * 0.02,
          bottom: MediaQuery.sizeOf(context).height * 0.08,
          child: CircleAvatar(
            radius: AppSize.getCircleRadius(context),
            backgroundImage: AssetImage(AssetImagePath.dartIcon),
          ),
        ),

        Positioned(
          left: MediaQuery.sizeOf(context).width * 0.02,
          bottom: MediaQuery.sizeOf(context).height * 0.008,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: 'Your Name',
                textStyle: AppTextStyle.headerTextStyle(
                  context,
                  textColor: AppColor.white,
                  textFontSize: MediaQuery.sizeOf(context).height * 0.025,
                ),
              ),
              CustomText(
                text: 'example33@gmail.com',
                textStyle: AppTextStyle.headerTextStyle(
                  context,
                  textColor: AppColor.grey,
                  fontWeight: FontWeight.w400,
                  textFontSize: MediaQuery.sizeOf(context).height * 0.02,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
