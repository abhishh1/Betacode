import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
//Comment down the basic state of mind of using StatefulWidget here
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //At the Row,Col index of end to end put an Lottifie animation(Spl. Food😉)
        color: Colors.white,
      //Change the color here to RGB(252, 186, 3)
      //The bg color should be in variation of linear gradient
      child: Center(
        child: SpinKitThreeBounce(
        //Change the animation style of loader to any but better🏍!
          color: Colors.deepOrange,
          size: 50.0,
         //Down here form an array of names(blah,blah,blah....)make the transition either fade or lefttoright at 1.75 speed(sppppp🏎)
        ),
      ),
    );
  }
}
//Try to reduce lines of code
//Thats it
