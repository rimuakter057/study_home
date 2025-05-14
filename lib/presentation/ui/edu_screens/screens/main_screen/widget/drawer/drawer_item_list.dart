
import 'package:flutter/material.dart';

import '../../../../utils/color/app_colors.dart';
import '../../../../utils/text/app_text_bn.dart';

/// drawer item list
final List<Map<String, dynamic>> drawerItems = [
  {'icon': Icons.home, 'text': AppTextBn.home, 'color': AppColor.blue},
  {
    'icon': Icons.video_library,
    'text': AppTextBn.communityVideos,
    'color': AppColor.indigo,
  },
  {'icon': Icons.school, 'text': AppTextBn.courses, 'color': AppColor.purple},
  {'icon': Icons.quiz, 'text': AppTextBn.quizzes, 'color': AppColor.yellow},
  {
    'icon': Icons.business_center,
    'text': AppTextBn.interviewPreparation,
    'color': AppColor.red,
  },
  {
    'icon': Icons.settings,
    'text': AppTextBn.settings,
    'color': AppColor.orange,
  },
  {'icon': Icons.logout, 'text': AppTextBn.logout, 'color': AppColor.grey},
];
