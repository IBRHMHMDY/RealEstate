// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:realstate_app/constants.dart';
import 'package:realstate_app/models/recommendation.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    Key? key,
    required this.recommendation,
  }) : super(key: key);

  final Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: kDefaultPadding),
      child: Container(
        width: 400,
        padding: EdgeInsets.all(kDefaultPadding),
        color: kSecondaryColor,
        child: Column(
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(recommendation.image!),
              ),
              title: Text(
                recommendation.name!,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              subtitle: Text(
                recommendation.source!,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Text(
              recommendation.text!,
              style: TextStyle(height: 1.5),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
