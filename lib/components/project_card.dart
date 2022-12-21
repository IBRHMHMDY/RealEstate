// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:realstate_app/constants.dart';
import 'package:realstate_app/models/project.dart';
import 'package:realstate_app/responsive.dart';

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      color: kSecondaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            project.image!,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Expanded(
            child: Text(
              project.title!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Responsive.isTablet(context)
                  ? Theme.of(context).textTheme.headline6
                  : Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Expanded(
            child: Text(
              project.description!,
              style: TextStyle(height: 1.5),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'More Info >>',
              style: TextStyle(color: kPrimaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
