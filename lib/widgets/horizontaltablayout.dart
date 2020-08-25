import 'package:flutter/material.dart';
import 'package:helloworld/widgets/tab_text.dart';

class HorizontalTabLayout extends StatefulWidget {
  @override
  _HorizontalTabLayoutState createState() => _HorizontalTabLayoutState();
}

class _HorizontalTabLayoutState extends State<HorizontalTabLayout> {
  int selectedTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Positioned(
        top: 0,
        bottom: 0,
        left: -20,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TabText(
                text: "Media",
                isSelected: selectedTabIndex == 0,
                onTabTap: (){
                  onTabTap(0);
                }
              ),
              TabText(
                text: "Streamers",
                isSelected: selectedTabIndex == 1,
                onTabTap: (){
                  onTabTap(1);
                }
              ),
              TabText(
                text: "Forums",
                isSelected: selectedTabIndex == 2,
                onTabTap: (){
                  onTabTap(2);
                }
              )
            ],
          ),
        ),
      ),
    );
  }

  onTabTap(int index) {
    setState(() {
      selectedTabIndex = index;
    });
  }
}
