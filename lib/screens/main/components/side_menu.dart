// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:portfolio_app/components/animated_progress_indicator.dart';
import 'package:portfolio_app/constants.dart';
import 'package:portfolio_app/screens/main/components/area_info_text.dart';
import 'package:portfolio_app/screens/main/components/my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          MyInfo(),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  AreaInfoText(title: 'Residence', text: 'Bangladesh'),
                  AreaInfoText(title: 'City', text: 'Dhaka'),
                  AreaInfoText(title: 'Age', text: '22'),
                  Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: defaultPadding),
                        child: Text("Skills",
                            style: Theme.of(context).textTheme.subtitle2),
                      ),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Expanded(
                            child: AnimatedCircularProgressIndicator(
                              percentage: 0.8,
                              label: "Flutter",
                            ),
                          ),
                          SizedBox(width: defaultPadding),
                          Expanded(
                            child: AnimatedCircularProgressIndicator(
                              percentage: 0.72,
                              label: "Django",
                            ),
                          ),
                          SizedBox(width: defaultPadding),
                          Expanded(
                            child: AnimatedCircularProgressIndicator(
                              percentage: 0.65,
                              label: "Firebase",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
