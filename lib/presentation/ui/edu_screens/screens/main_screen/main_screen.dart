import 'package:flutter/material.dart';
import 'package:study_home/presentation/ui/edu_screens/screens/main_screen/widget/body/doc_container.dart';
import 'package:study_home/presentation/ui/edu_screens/screens/main_screen/widget/body/option_container.dart';
import 'package:study_home/presentation/ui/edu_screens/screens/main_screen/widget/drawer/my_drawer.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../common/widget/custom_appbar.dart';
import '../../common/widget/custom_divider.dart';
import '../../common/widget/custom_text.dart';
import '../../utils/asset_path.dart';
import '../../utils/color/app_colors.dart';
import '../../utils/text/app_size.dart';
import '../../utils/text/app_text_bn.dart';
import '../../utils/text/app_text_styles.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {


 Future<void> _launchDartDocs()async{
   final Uri url =Uri.parse("https://dart.dev/docs");
   if(!await launchUrl(url)){
     throw Exception("Could not launch $url");
   }
   print("dart");
 }

  Future<void> _launchFlutterDocs() async {
    final Uri url = Uri.parse('https://docs.flutter.dev/');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
    print("flutter");
  }
  @override
  Widget build(BuildContext context) {
    Widget gap = SizedBox(height: AppSize.spaceBthSections(context));
    return Scaffold(
      appBar: CustomAppBarEdu(title: AppTextBn.flutterAcademy, icon: Icons.sunny),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSize.defaultPadding(context)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              gap,
              CustomText(
                text: AppTextBn.documentation,
                textStyle: AppTextStyle.headerTextStyle(
                  context,
                  textColor: AppColor.blue,
                ),
              ),
              gap,

              /// read doc container
              _buildDocContainer(),

              /// choose your option
              _buildOptionItem(gap, context),
            ],
          ),
        ),
      ),
    );
  }

  /// choose your option
  Column _buildOptionItem(Widget gap, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        gap,
        CustomText(
          text: AppTextBn.community,
          textStyle: AppTextStyle.headerTextStyle(
            context,
            textColor: AppColor.blue,
          ),
        ),
        gap,
        OptionContainer(
          boarderColor: AppColor.yellow,
          imageUrl: AssetImagePath.dartIcon,
          titleText: AppTextBn.bangladeshCommunity,
          subtitleText: AppTextBn.contactFlutterDevelopers,
        ),
        gap,
        CustomText(
          text: AppTextBn.flutterAndDartCourse,
          textStyle: AppTextStyle.headerTextStyle(
            context,
            textColor: AppColor.blue,
          ),
        ),
        gap,
        OptionContainer(
          boarderColor: AppColor.red,
          imageUrl: AssetImagePath.dartIcon,
          titleText: AppTextBn.videosCourse,
          subtitleText: AppTextBn.watchVideoTutorial,
        ),
        gap,
        CustomText(
          text: AppTextBn.problemSolving,
          textStyle: AppTextStyle.headerTextStyle(
            context,
            textColor: AppColor.blue,
          ),
        ),
        SizedBox(height: AppSize.spaceBthItems(context)),
        CustomDivider(),
        gap,
        OptionContainer(
          boarderColor: AppColor.orange,
          imageUrl: AssetImagePath.dartIcon,
          titleText: AppTextBn.codingChallenges,
          subtitleText: AppTextBn.codingChallenges,
        ),
        gap,
        CustomText(
          text: AppTextBn.quiz,
          textStyle: AppTextStyle.headerTextStyle(
            context,
            textColor: AppColor.blue,
          ),
        ),
        gap,
        OptionContainer(
          boarderColor: AppColor.yellow,
          imageUrl: AssetImagePath.dartIcon,
          titleText: AppTextBn.flutterAndDartQuiz,
          subtitleText: AppTextBn.contactFlutterDevelopers,
        ),
        gap,
        CustomText(
          text: AppTextBn.interviewPreparation,
          textStyle: AppTextStyle.headerTextStyle(
            context,
            textColor: AppColor.blue,
          ),
        ),
        gap,
        OptionContainer(
          boarderColor: AppColor.orange,
          imageUrl: AssetImagePath.dartIcon,
          titleText: AppTextBn.interviewPreparation,
          subtitleText: AppTextBn.contactFlutterDevelopers,
        ),
      ],
    );
  }

  /// read doc container
  Row _buildDocContainer() {
    return Row(
      children: [
        Expanded(
          child: DocContainer(
            onTap: _launchFlutterDocs,
            imageUrl: AssetImagePath.flutterIcon,
            titleText: AppTextBn.flutter,
            subtitleText: AppTextBn.documentation,
          ),
        ),
        SizedBox(width: 8),
        Expanded(
          child: DocContainer(
            onTap:_launchDartDocs,
            imageUrl: AssetImagePath.dartIcon,
            titleText: AppTextBn.dart,
            subtitleText: AppTextBn.documentation,
          ),
        ),
      ],
    );
  }
}
