import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
// import 'package:google_fonts/google_fonts.dart';

class TitleText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  const TitleText({Key? key, required this.text, this.fontSize = 18, this.color = const Color(0xff1d2635), this.fontWeight = FontWeight.w800}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(text,
        // style: GoogleFonts.muli(
        //     fontSize: fontSize, fontWeight: fontWeight, color: color)
        style: TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color));
  }
}
