import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyDevices {
  static double? screenwidth;
  static double? screenheight;
  static double? screenSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    screenwidth = MediaQuery.of(context).size.width;
    screenheight = MediaQuery.of(context).size.height;
    orientation = MediaQuery.of(context).orientation;
    screenSize = orientation == Orientation.landscape
        ? screenheight! * 0.024
        : screenwidth! * 0.024;
  }
}
