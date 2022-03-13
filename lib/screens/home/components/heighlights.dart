// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:portfolio_app/components/animated_counter.dart';
import 'package:portfolio_app/constants.dart';
import 'package:portfolio_app/responsive.dart';
import 'package:portfolio_app/screens/home/components/heigh_light.dart';

class HighLightInfo extends StatelessWidget {
  const HighLightInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    HeighLight(
                      counter: AnimatedCounter(value: 119, text: "K+"),
                      label: "Subscribers",
                    ),
                    HeighLight(
                      counter: AnimatedCounter(value: 40, text: "+"),
                      label: "Videos",
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    HeighLight(
                      counter: AnimatedCounter(value: 30, text: "+"),
                      label: "Github Projects",
                    ),
                    HeighLight(
                      counter: AnimatedCounter(value: 13, text: "K+"),
                      label: "Stars",
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                HeighLight(
                  counter: AnimatedCounter(value: 119, text: "K+"),
                  label: "Subscribers",
                ),
                HeighLight(
                  counter: AnimatedCounter(value: 40, text: "+"),
                  label: "Videos",
                ),
                HeighLight(
                  counter: AnimatedCounter(value: 30, text: "+"),
                  label: "Github Projects",
                ),
                HeighLight(
                  counter: AnimatedCounter(value: 13, text: "K+"),
                  label: "Stars",
                ),
              ],
            ),
    );
  }
}
