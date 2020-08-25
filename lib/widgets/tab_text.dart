import 'package:flutter/material.dart';

class TabText extends StatelessWidget {
  final bool isSelected;
  final String text;
  final Function onTabTap;

  const TabText({Key key, this.isSelected, this.text, this.onTabTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 1.58,
      child: InkWell(
        onTap: onTabTap,
        child: Text(
          text,
          style: TextStyle(color: isSelected ? Colors.black : Colors.grey),
        ),
      ),
    );
  }
}
