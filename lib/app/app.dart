

import 'package:flutter/material.dart';
import 'package:study_home/presentation/ui/screen/home_page/home_page.dart';



class StudyHome extends StatelessWidget {
  const StudyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
