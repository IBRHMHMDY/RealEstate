// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:realstate_app/screens/home_screen.dart';
import 'projects_section.dart';
import 'recommendations_section.dart';
import 'banner_section.dart';
import 'icons_info_section.dart';

class SectionsPage extends StatelessWidget {
  const SectionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen(
      sections: SingleChildScrollView(
        // ignore: prefer_const_literals_to_create_immutables
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            BannerSection(),
            IconsInfoSection(),
            ProjectsSection(),
            RecommendationsSection(),
          ],
        ),
      ),
    );
  }
}
