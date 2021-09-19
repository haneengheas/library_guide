import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color purple = Color(0xFFb39ddb);
const Color clear_gray = Color(0xFFbdbdbd);
const Color gray = Color(0xFF8a8989);
const Color white = Color(0xFFfafafa);
const Color black = Color(0xFF09090a);

TextStyle s1 = GoogleFonts.tajawal(
    textStyle: TextStyle(
        fontSize: 28, fontWeight: FontWeight.w600, color: gray, height: .2));
TextStyle s2 = GoogleFonts.tajawal(
    textStyle: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: clear_gray,
        height: 1.5));
TextStyle s3 = GoogleFonts.tajawal(
    textStyle: TextStyle(
        fontSize: 18, fontWeight: FontWeight.bold, color: white, height: 1.5));
TextStyle s4 = GoogleFonts.tajawal(
    textStyle: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: gray,
        height: 1.5));

double sizeFromHeight(BuildContext context, double fraction,
    {bool hasAppBar = true}) {
  final screenHeight = MediaQuery.of(context).size.height;
  fraction = (hasAppBar
          ? (screenHeight -
              AppBar().preferredSize.height -
              MediaQuery.of(context).padding.top)
          : screenHeight) /
      fraction;
  return fraction;
}

double sizeFromWidth(BuildContext context, double fraction) {
  return MediaQuery.of(context).size.width / fraction;
}
