import 'package:flutter/material.dart';

Color primaryColor = Color(0xffedd3cb);
Color darkPrimaryColor = Color(0xff6f3d2e);

Decoration playControlDecoration = BoxDecoration(
  color: primaryColor,
  shape: BoxShape.circle,
  boxShadow: [
    BoxShadow(
      color: darkPrimaryColor.withOpacity(0.4),
      offset: Offset(5, 10),
      spreadRadius: 3,
      blurRadius: 9,
    ),
    BoxShadow(
      color: Colors.white,
      offset: Offset(-3, -4),
      spreadRadius: -2,
      blurRadius: 20,
    )
  ],
);

Decoration playControlStackDecoration2 =
    BoxDecoration(color: primaryColor, shape: BoxShape.circle);
Decoration playContorlStackdecoration1 =
    BoxDecoration(color: darkPrimaryColor, shape: BoxShape.circle);

Decoration navBarDecoration = BoxDecoration(
  boxShadow: [
    BoxShadow(
      color: darkPrimaryColor,
      offset: Offset(3, 6),
      spreadRadius: 2,
      blurRadius: 6,
    ),
    BoxShadow(
      color: Colors.white,
      offset: Offset(-2, -3),
      spreadRadius: -1,
      blurRadius: 20,
    ),
  ],
  color: primaryColor,
  borderRadius: BorderRadius.circular(10.0),
);
