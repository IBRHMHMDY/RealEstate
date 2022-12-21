// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:realstate_app/constants.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: Text(
            'Contacts',
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        BuildContactInfo(title: 'Address', text: 'Suez'),
        BuildContactInfo(title: 'Country', text: 'Egypt'),
        BuildContactInfo(title: 'Mobile', text: '+452 255 2566'),
        BuildContactInfo(title: 'Email', text: 'myemail@MyWebsite.com'),
        BuildContactInfo(title: 'Website', text: 'MyWebsite.com'),
      ],
    );
  }

  Padding BuildContactInfo({required String title, required String text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w200, color: Colors.white),
          ),
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
