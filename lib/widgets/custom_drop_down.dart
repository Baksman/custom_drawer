import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  final String text;
  CustomDropDown(this.text);
  @override
  _CustomDropDownState createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  bool isDropdownOpened = false;
  GlobalKey actionKey;
  double height, width, xPosition, yPosition;
  OverlayEntry floatingDropdown;
  OverlayEntry _createFloatingDropDown() {
    return OverlayEntry(builder: (context) {
      return Positioned(
          left: xPosition,
          width: width,
          top: yPosition + height + 30,
          height: height,
          child: DropDown(height));
    });
  }

  @override
  void initState() {
    actionKey = LabeledGlobalKey(widget.text);
    super.initState();
  }

  findDropdownData() {
    RenderBox renderBox = actionKey.currentContext.findRenderObject();
    height = renderBox.size.height;
    width = renderBox.size.width;
    Offset position = renderBox.localToGlobal(Offset.zero);
    xPosition = position.dx;
    yPosition = position.dy;
    print(xPosition);
    print(yPosition);
    print(height);
    print(width);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: actionKey,
      onTap: () {
        findDropdownData();
        if (isDropdownOpened) {
          setState(() {
            floatingDropdown.remove();
          });
        } else {
          setState(() {
            isDropdownOpened = !isDropdownOpened;
            floatingDropdown = _createFloatingDropDown();
            Overlay.of(context).insert(floatingDropdown);
          });
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.red.shade600,
        ),
        child: Row(
          children: <Widget>[
            Text("calll to action".toUpperCase(),
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w600)),
            Spacer(),
            Icon(Icons.arrow_drop_down, color: Colors.white, size: 20)
          ],
        ),
      ),
    );
  }
}

class DropDown extends StatelessWidget {
  final double itemHeigth;
  DropDown(this.itemHeigth);
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(-0.85, -1.0),
      child: Column(
        children: <Widget>[
          SizedBox(height: 5),
          ClipPath(
            clipper: ArrowClipper(),
            child: Container(
              height: 20,
              width: 30,
              decoration: BoxDecoration(color: Colors.red.shade600),
            ),
          ),
          Container(
            height: 4 * itemHeigth,
            child: Column(
              children: <Widget>[
                DropdownItem(
                  text: "Add new",
                  icon: Icons.add_circle_outline,
                ),
                DropdownItem(
                  text: "View profile",
                  icon: Icons.person_outline,
                ),
                DropdownItem(
                  text: "Settings",
                  icon: Icons.settings,
                ),
                DropdownItem(
                  text: "Logout",
                  icon: Icons.exit_to_app,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ArrowClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height);
    path.lineTo(size.width / 2, 0);
    path.lineTo(size.width, size.height);

    // TODO: implement getClip
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}

class DropdownItem extends StatelessWidget {
//  final double itemHeight;
  final String text;
  final IconData icon;
  final bool isSelected;

  const DropdownItem({Key key, this.text, this.icon, this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.red.shade600,
      ),
      child: Row(
        children: <Widget>[
          Text(text.toUpperCase(),
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w600)),
          Spacer(),
          Icon(icon, color: Colors.white, size: 20)
        ],
      ),
    );
  }
}
