import 'package:flutter/material.dart';

import '../../../../common/widget/Custom_container.dart';
import '../../../../common/widget/custom_text.dart';
import '../../../../utils/color/app_colors.dart';
import '../../../../utils/text/app_size.dart';
import '../../../../utils/text/app_text_styles.dart';

///main screen body document select container

class DocContainer extends StatelessWidget {
  const DocContainer({
    super.key,
    required this.titleText,
    required this.subtitleText,
    required this.imageUrl,
    this.onTap,
  });
  final String imageUrl;
  final String titleText;
  final String subtitleText;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CustomContainer(
        borderWidth: 2,
        height: AppSize.containerHeightLg(context),
        borderColor: AppColor.gradientEndColor,
        borderRadius: BorderRadius.circular(AppSize.borderRadiusSm(context)),

        child: Padding(
          padding: EdgeInsets.all(AppSize.spaceBthItems(context)),
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Align all children in the center
            crossAxisAlignment:
                CrossAxisAlignment.center, // Center children horizontally
            children: [
              Expanded(child: Image.asset(imageUrl, fit: BoxFit.contain)),
              SizedBox(height: 10),
              Expanded(child: CustomText(text: titleText)),
              Expanded(
                child: CustomText(
                  text: subtitleText,
                  textStyle: AppTextStyle.secondaryTextStyle(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
