// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:realstate_app/constants.dart';
import 'package:realstate_app/responsive.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/background.jpg',
            fit: BoxFit.cover,
          ),
          Container(
            color: kDarkColor.withOpacity(0.20),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Build a greate future \nfor all of us!',
                    style: Responsive.isTablet(context)
                        ? Theme.of(context).textTheme.headline5!.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold)
                        : Theme.of(context).textTheme.headline3!.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: kDefaultPadding / 2,
                ),
                ElevatedButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: kDefaultPadding * 2,
                        vertical: kDefaultPadding),
                    backgroundColor: kPrimaryColor,
                  ),
                  onPressed: () {},
                  child: Text(
                    'CONTACT US',
                    style: TextStyle(color: kDarkColor),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
