import 'package:flutter/material.dart';
import 'package:helloworld/widgets/LandingPage.dart';
//import 'package:helloworld/widgets/custom_drop_down.dart';
//import 'package:intl/intl.dart';

void main() => runApp(Clock());

class Clock extends StatefulWidget {
  Clock({Key key}) : super(key: key);

  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  DateTime now = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Scaffold(
      //   body: Column(
      //     children: <Widget>[
      //       Padding(
      //         padding: EdgeInsets.symmetric(vertical: 32,horizontal:42),
      //         child: CustomDropDown("text to call")),
      //     ],
      //   )
      // ),
      home: LandingPage() ,
    );
  }

}

// class BinaryTime{
//   List<String> binaryIntegers;
//    BinaryTime(){
//      DateTime now = DateTime.now();
//      String hhmmss =
//    }
// }


