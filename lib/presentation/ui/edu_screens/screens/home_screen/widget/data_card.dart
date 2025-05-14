import 'package:flutter/material.dart';
import '../../../common/widget/custom_card.dart';
import '../../../common/widget/custom_text.dart';
import '../../../utils/text/app_size.dart';
import '../../../utils/text/app_text_en.dart';
import '../../../utils/text/app_text_styles.dart';
import '../data_list/data_list.dart';

class DataCard extends StatelessWidget {
  const DataCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: AppSize.spaceBthSections(context)),
          CustomText(text: AppTextEn.courseDescription),
          _buildCard(
            title: AppTextEn.whatYouWillLearn,
            items: DataList.courseDescription,
            context: context,
          ),
          // Requirements Card
          _buildCard(
            title: AppTextEn.requirements,
            items: DataList.requirements,
            context: context,
          ),
        ],
      ),
    );
  }

  Widget _buildCard({
    required String title,
    required List<String> items,
    required BuildContext context,
  }) {
    return SizedBox(
      width: double.infinity,
      child: CustomCard(
        child: Padding(
          padding: EdgeInsets.all(AppSize.defaultPadding(context)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(text: title),
              SizedBox(height: 8),
              for (var item in items) ...[
                CustomText(
                  maxLines: 2,
                  text: item,
                  textStyle: AppTextStyle.dataTextStyle(context),
                ),
                SizedBox(height: 3),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
