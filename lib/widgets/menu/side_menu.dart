// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:realstate_app/constants.dart';
import 'contact_info.dart';
import 'goals.dart';
import 'logo.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Logo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(kDefaultPadding / 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    ContactInfo(),
                    Divider(),
                    Goals(),
                    Divider(),
                    SizedBox(height: kDefaultPadding),
                    TextButton(
                      onPressed: () {},
                      child: FittedBox(
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/icons/download.svg'),
                            SizedBox(
                              width: kDefaultPadding / 2,
                            ),
                            Text(
                              'download Brochure',
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: kDefaultPadding * 2),
                      color: kSecondaryColor,
                      child: Row(children: [
                        Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/icons/github.svg')),
                        IconButton(
                            onPressed: () {},
                            icon:
                                SvgPicture.asset('assets/icons/linkedin.svg')),
                        IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/icons/twitter.svg')),
                        IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/icons/dribble.svg')),
                        Spacer(),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
