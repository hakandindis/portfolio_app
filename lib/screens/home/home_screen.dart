// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:portfolio_app/screens/home/components/heighlights.dart';
import 'package:portfolio_app/screens/home/components/home_banner.dart';
import 'package:portfolio_app/screens/home/components/my_projects.dart';
import 'package:portfolio_app/screens/home/components/recommendations.dart';
import 'package:portfolio_app/screens/main/main_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  //final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_literals_to_create_immutables
    return MainScreen(
      children: [
        HomeBanner(),
        HighLightInfo(),
        MyProjects(),
        Recommendations(),
      ],
    );
  }
}
