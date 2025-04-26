import 'package:flutter/material.dart';

TextStyle getHeadlineTextStyle(
    {Color? color, double? fontSize, FontWeight? fontWeight}) {
  return TextStyle(
    fontSize: fontSize ?? 30,
    fontWeight: fontWeight ?? FontWeight.bold,
    color: color ?? Colors.black,
  );
}

TextStyle getSubHeadlineTextStyle(
    {Color? color, double? fontSize, FontWeight? fontWeight}) {
  return TextStyle(
    fontSize: fontSize ?? 20,
    fontWeight: fontWeight ?? FontWeight.bold,
    color: color ?? Colors.black,
  );
}

TextStyle getBodyTextStyle(
    {Color? color, double? fontSize, FontWeight? fontWeight}) {
  return TextStyle(
    fontSize: fontSize ?? 16,
    fontWeight: fontWeight ?? FontWeight.normal,
    color: color ?? Colors.black,
  );
}

TextStyle getSmallTextStyle(
    {Color? color, double? fontSize, FontWeight? fontWeight}) {
  return TextStyle(
    fontSize: fontSize ?? 12,
    fontWeight: fontWeight ?? FontWeight.normal,
    color: color ?? Colors.black,
  );
}
