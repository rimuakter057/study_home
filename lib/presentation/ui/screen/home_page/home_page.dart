import 'package:flutter/material.dart';
import 'package:study_home/presentation/ui/widget/responsive_builder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: ResponsiveBuilder(mobile: Text("mobile"), tablet: Text("tablet"),
        desktop: Text("desktop")),
    );
  }
}
