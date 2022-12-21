// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:realstate_app/constants.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: kSecondaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Spacer(flex: 2), //Spacer
            Image(
              image: AssetImage('assets/images/logo.png'),
              width: 100,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Real Estate',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text(
              'Modern home with \n greate interior design',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            Spacer(flex: 2) //Spacer
          ],
        ),
      ),
    );
  }
}
