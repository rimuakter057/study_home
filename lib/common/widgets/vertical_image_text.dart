import 'package:flutter/material.dart';
import 'package:study_home/presentation/utils/constants/color.dart';
import 'package:study_home/presentation/utils/constants/size/sizes.dart';
import 'package:study_home/presentation/utils/helper/helper_function.dart';


class VerticalImageText extends StatelessWidget {
  const VerticalImageText({
    super.key, required this.image, required this.title, required this.textColor, this.backgroundColor, this.onTap,
  });


  final String image,title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: AppSizes.spaceBtwItems),
        child: Column(
          children: [
                     ///circular icon
            Container(
              height: 56,
              width: 56,
              padding: EdgeInsets.all(AppSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor??(AppHelperFunction.isDarkMode(context)?AppColors.black:AppColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(
                    image,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: AppSizes.spaceBtwSections/2),
            ///text
            SizedBox(width: 56,child: Text(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              title,style: Theme.of(context).textTheme.labelMedium!.apply(color: textColor),))
          ],
        ),
      ),
    );
  }
}