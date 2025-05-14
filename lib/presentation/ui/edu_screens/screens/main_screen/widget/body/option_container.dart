import 'package:flutter/material.dart';

import '../../../../common/widget/Custom_container.dart';
import '../../../../common/widget/custom_text.dart';
import '../../../../utils/text/app_size.dart';
import '../../../../utils/text/app_text_styles.dart';

//// main screen body option select container

class OptionContainer extends StatelessWidget {
  const OptionContainer({
    super.key,
    required this.boarderColor,
    required this.imageUrl,
    required this.titleText,
    required this.subtitleText,
    this.onTap,
  });

  final Color boarderColor;
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
        height: AppSize.containerHeightMd(context),
        width: AppSize.screenWidth(context),
        borderColor: boarderColor,
        borderRadius: BorderRadius.circular(AppSize.borderRadiusSm(context)),

        child: Padding(
          padding: EdgeInsets.all(AppSize.spaceBtwItems(context)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Image.asset(
                  imageUrl,
                  height: AppSize.imageMd(context),
                  width: AppSize.imageMd(context),
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(width: AppSize.spaceWTwoItems(context)),
              SizedBox(
                height: AppSize.opCoHeight(context),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment
                          .start, // Align column items at the start
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(child: CustomText(text: titleText)),
                    Expanded(
                      child: CustomText(
                        textAlign: TextAlign.start,
                        maxLines: 2,
                        text: subtitleText,
                        textStyle: AppTextStyle.secondaryTextStyle(context),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
