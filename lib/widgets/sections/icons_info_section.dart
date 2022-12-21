// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:realstate_app/constants.dart';
import 'package:realstate_app/responsive.dart';

class IconsInfoSection extends StatelessWidget {
  const IconsInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding * 3),
      child: Responsive.isTablet(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: buildIconInfo(
                          context: context,
                          icon: Icons.supervisor_account,
                          text: '65+',
                          label: 'Clients'),
                    ),
                    Expanded(
                      child: buildIconInfo(
                          context: context,
                          icon: Icons.location_on,
                          text: '180+',
                          label: 'Projects'),
                    ),
                  ],
                ),
                SizedBox(height: kDefaultPadding * 3),
                Row(
                  children: [
                    Expanded(
                      child: buildIconInfo(
                          context: context,
                          icon: Icons.public,
                          text: '30+',
                          label: 'Countries'),
                    ),
                    Expanded(
                      child: buildIconInfo(
                        context: context,
                        icon: Icons.star,
                        text: '13k',
                        label: 'Rated',
                      ),
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildIconInfo(
                    context: context,
                    icon: Icons.supervisor_account,
                    text: '65+',
                    label: 'Clients'),
                buildIconInfo(
                    context: context,
                    icon: Icons.location_on,
                    text: '180+',
                    label: 'Projects'),
                buildIconInfo(
                    context: context,
                    icon: Icons.public,
                    text: '30+',
                    label: 'Countries'),
                buildIconInfo(
                  context: context,
                  icon: Icons.star,
                  text: '13k',
                  label: 'Rated',
                ),
              ],
            ),
    );
  }

  Column buildIconInfo(
      {required BuildContext context,
      required IconData icon,
      required String text,
      required String label}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 50,
        ),
        SizedBox(height: 10),
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(color: kPrimaryColor, fontSize: 30),
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ],
    );
  }
}
