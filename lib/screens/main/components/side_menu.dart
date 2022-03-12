// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:portfolio_app/constants.dart';
import 'package:portfolio_app/screens/main/components/area_info_text.dart';
import 'package:portfolio_app/screens/main/components/knowledges.dart';
import 'package:portfolio_app/screens/main/components/my_info.dart';
import 'package:portfolio_app/screens/main/components/skills.dart';

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
                  Skills(),
                  SizedBox(height: defaultPadding),
                  Coding(),
                  Knowledges(),
                  Divider(),
                  SizedBox(height: defaultPadding / 2),
                  TextButton(
                    onPressed: () {},
                    child: FittedBox(
                      child: Row(
                        children: [
                          Text(
                            "DOWNLOAD CV",
                            style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyText1!.color,
                            ),
                          ),
                          SizedBox(width: defaultPadding / 2),
                          SvgPicture.asset("assets/icons/download.svg"),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: defaultPadding / 2),
                    color: Color(0xFF2424E),
                    child: Row(
                      children: [
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/github.svg"),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/twitter.svg"),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                        ),
                        Spacer(),
                      ],
                    ),
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

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text("Coding", style: Theme.of(context).textTheme.subtitle2),
        ),
        AnimatedLinearProgressIndicator(percentage: 0.7, label: "Dart"),
        AnimatedLinearProgressIndicator(percentage: 0.68, label: "Python"),
        AnimatedLinearProgressIndicator(percentage: 0.9, label: "HTML"),
        AnimatedLinearProgressIndicator(percentage: 0.75, label: "CSS"),
        AnimatedLinearProgressIndicator(percentage: 0.58, label: "JavaScript"),
      ],
    );
  }
}

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);

  final double percentage;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: percentage),
        duration: defaultDuration,
        builder: (context, double value, child) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(label, style: TextStyle(color: Colors.white)),
                Text((value * 100).toInt().toString() + "%"),
              ],
            ),
            SizedBox(height: defaultPadding / 2),
            LinearProgressIndicator(
              value: value,
              color: primaryColor,
              backgroundColor: darkColor,
            ),
          ],
        ),
      ),
    );
  }
}
