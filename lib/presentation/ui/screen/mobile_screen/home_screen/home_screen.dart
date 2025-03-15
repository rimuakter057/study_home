import 'package:flutter/material.dart';
import 'package:study_home/common/widgets/containers/mb_home_search_container.dart';
import 'package:study_home/common/widgets/text/section_headding.dart';
import 'package:study_home/core/extention/localization_extention.dart';
import 'package:study_home/presentation/ui/screen/mobile_screen/home_screen/widget/appbar.dart';
import 'package:study_home/presentation/ui/screen/mobile_screen/home_screen/widget/class_joining_card.dart';
import 'package:study_home/presentation/ui/screen/mobile_screen/home_screen/widget/header_container.dart';
import 'package:study_home/presentation/utils/constants/color.dart';
import 'package:study_home/presentation/utils/constants/size/sizes.dart';
import '../../../../../common/widgets/vertical_image_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MobileHomeScreen extends StatelessWidget {
  const MobileHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// appbar
                  MbHomeAppbar(),
                  SizedBox(height: AppSizes.spaceBtwSections),

                  ///search bar
                  SearchContainer(text: 'search'),
                  SizedBox(height: AppSizes.spaceBtwSections),
                  Text(context.localization.appName),

                  ///category
                  Padding(
                    padding: const EdgeInsets.only(left: AppSizes.defaultSpace),
                    child: Column(
                      children: [
                        AppSectionHeading(
                          title: 'category',
                          showActionButton: false,
                        ),
                        SizedBox(height: AppSizes.spaceBtwSections),
                        _buildCategoryItem,
                      ],
                    ),
                  ),
                ],
              ),
            ),

            ///body here
            ClassCard(
              title: 'class name',
              instructor: 'Rimu',
              date: '2-2-2023',
              time: '1:07 pm',
              isCompleted: false,
            ),
          ],
        ),
      ),
    );
  }

  SizedBox get _buildCategoryItem {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return VerticalImageText(
            image: "assets/images/batch_eight.jpg",
            title: 'class',
            textColor: AppColors.black,
            onTap: () {},
          );
        },
      ),
    );
  }
}
