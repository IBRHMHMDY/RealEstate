// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:realstate_app/constants.dart';

class Goals extends StatelessWidget {
  const Goals({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: Text(
            'Goals',
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        buildGoals(text: 'Planning stage'),
        buildGoals(text: 'Development'),
        buildGoals(text: 'Execution phase'),
        buildGoals(text: 'New way to living'),
      ],
    );
  }

  Padding buildGoals({required String text}) {
    return Padding(
      padding: EdgeInsets.only(bottom: kDefaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/check.svg'),
          SizedBox(
            width: kDefaultPadding / 2,
          ),
          Text(text),
        ],
      ),
    );
  }
}
