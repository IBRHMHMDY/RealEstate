// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:realstate_app/constants.dart';
import 'package:realstate_app/responsive.dart';
import 'package:realstate_app/widgets/menu/side_menu.dart';

class HomeScreen extends StatelessWidget {
  final Widget sections;

  const HomeScreen({super.key, required this.sections});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              elevation: 0,
              backgroundColor: kBgColor,
              leading: Builder(
                builder: (context) => IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    }),
              ),
              title: Text('Real Estate App'),
            ),
      drawer: SideMenu(),
      body: SafeArea(
        child: Container(
          constraints: BoxConstraints(maxWidth: 2560),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              if (Responsive.isDesktop(context))
                Expanded(
                  flex: 2,
                  child: SideMenu(),
                ),
              Expanded(
                flex: 10,
                child: sections,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
