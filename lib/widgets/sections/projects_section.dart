// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:realstate_app/constants.dart';
import 'package:realstate_app/models/project.dart';
import 'package:realstate_app/components/project_card.dart';
import 'package:realstate_app/responsive.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Text(
            'Our Projects',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        Responsive(
          largest: buildGridView(
            itemCount: demoProjects.length,
            crossAxisCount: 4,
            childAspectRatio: 0.7,
            itembuilder: (context, index) => ProjectCard(
              project: demoProjects[index],
            ),
          ),
          desktop: buildGridView(
            itemCount: demoProjects.length,
            crossAxisCount: 3,
            childAspectRatio: 0.7,
            itembuilder: (context, index) => ProjectCard(
              project: demoProjects[index],
            ),
          ),
          tablet: buildGridView(
            itemCount: demoProjects.length,
            crossAxisCount: 2,
            childAspectRatio: 0.7,
            itembuilder: (context, index) => ProjectCard(
              project: demoProjects[index],
            ),
          ),
          mobile: buildGridView(
            itemCount: demoProjects.length,
            crossAxisCount: 1,
            childAspectRatio: 0.7,
            itembuilder: (context, index) => ProjectCard(
              project: demoProjects[index],
            ),
          ),
          smallest: buildGridView(
            itemCount: demoProjects.length,
            crossAxisCount: 1,
            childAspectRatio: 0.7,
            itembuilder: (context, index) => ProjectCard(
              project: demoProjects[index],
            ),
          ),
        )
      ],
    );
  }

  GridView buildGridView({
    required int itemCount,
    required int crossAxisCount,
    required double childAspectRatio,
    required IndexedWidgetBuilder itembuilder,
  }) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: itemCount,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: kDefaultPadding,
        crossAxisSpacing: kDefaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: itembuilder,
    );
  }
}
