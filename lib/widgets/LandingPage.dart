

import 'package:flutter/material.dart';
import 'package:helloworld/widgets/app_background.dart';
import 'package:helloworld/widgets/horizontaltablayout.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AppBackground(),
        Center(
          child: HorizontalTabLayout(),
        )
      ],
    );
  }
}