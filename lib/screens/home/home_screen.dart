// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:portfolio_app/constants.dart';
import 'package:portfolio_app/models/Project.dart';
import 'package:portfolio_app/screens/home/components/heighlights.dart';
import 'package:portfolio_app/screens/home/components/home_banner.dart';
import 'package:portfolio_app/screens/home/components/project_card.dart';
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
        Column(
          children: [
            Text(
              "My Projects",
              style: Theme.of(context).textTheme.headline6,
            ),
            //const SizedBox(height: defaultPadding),
            GridView.builder(
              //primary: false,
              //controller: _scrollController,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: demo_projects.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1.3,
                crossAxisSpacing: defaultPadding,
                mainAxisSpacing: defaultPadding,
              ),
              itemBuilder: (context, index) => ProjectCard(
                project: demo_projects[index],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
