import 'package:flutter/material.dart';

class AppBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final height = constraints.maxHeight;
        final width = constraints.minWidth;
        return Stack(
          children: [
            Container(
              color: Colors.greenAccent,
            ),
            Positioned(
              left: -(height / 2 - width / 2),
              bottom: height * .25,
              child: Container(
                height: height,
                width: width,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.teal),
              ),
            ),
            Positioned(
              left: 0,
              bottom: -width * .5,
              child: Container(
                height: width * 1.6,
                width: width * 1.6,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.teal),
              ),
            ),
            Positioned(
             right: -width* .2,
             top: -40,
              child: Container(
                height: width *0.6,
                width: width *0.6,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.red),
              ),
            )
          ],
        );
      },
    );
  }
}
