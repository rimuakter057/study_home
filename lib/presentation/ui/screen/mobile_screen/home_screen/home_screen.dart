import 'package:flutter/material.dart';
import 'package:study_home/common/widgets/containers/mb_home_search_container.dart';
import 'package:study_home/common/widgets/text/section_headding.dart';
import 'package:study_home/core/extention/localization_extention.dart';
import 'package:study_home/presentation/ui/edu_screens/utils/asset_path.dart';
import 'package:study_home/presentation/ui/screen/mobile_screen/home_screen/widget/appbar.dart';
import 'package:study_home/presentation/ui/screen/mobile_screen/home_screen/widget/class_joining_card.dart';
import 'package:study_home/presentation/ui/screen/mobile_screen/home_screen/widget/header_container.dart';
import 'package:study_home/presentation/utils/constants/color.dart';
import 'package:study_home/presentation/utils/constants/size/sizes.dart';
import '../../../../../common/widgets/vertical_image_text.dart';


class MobileHomeScreen extends StatelessWidget {
  const MobileHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderContainer(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(AppSizes.defaultSpace),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// appbar
                      MbHomeAppbar(),
                      SizedBox(height: AppSizes.spaceBtwSections),
                
                      ///search bar
                      SearchContainer(text: 'search'),
                      ///category
                      Column(
                        children: [
                        /*  AppSectionHeading(
                            title: 'category',
                            showActionButton: false,
                          ),*/
                          SizedBox(height: AppSizes.spaceBtwSections),
                          _buildCategoryItem, /// network calll / jekuno kisu
                        ],
                      ),
                    ],
                  ),
                ),
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
            image: AssetImagePath.dartIcon,
            title: 'class',
            textColor: AppColors.black,
            onTap: () {},
          );
        },
      ),
    );
  }
}
