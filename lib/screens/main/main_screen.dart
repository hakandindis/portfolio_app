// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio_app/constants.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Drawer(
                  child: Column(
                    children: [
                      AspectRatio(
                        aspectRatio: 1.23,
                        child: Container(
                          color: Color(0xFF242430),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 50,
                                backgroundImage:
                                    AssetImage("assets/images/IMG_7344.jpg"),
                              ),
                              Text(
                                "Abu Anwar",
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 7,
                child: Container(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
