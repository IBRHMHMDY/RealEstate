// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:realstate_app/components/recommendation_card.dart';
import 'package:realstate_app/constants.dart';
import 'package:realstate_app/models/recommendation.dart';

class RecommendationsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: kDefaultPadding / 2),
          Text(
            'Clients Recommendations',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          SizedBox(height: kDefaultPadding),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                demoRecommendations.length,
                (index) => RecommendationCard(
                  recommendation: demoRecommendations[index],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
