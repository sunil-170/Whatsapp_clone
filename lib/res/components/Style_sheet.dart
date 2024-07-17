import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontStyle {
  Color txtcolor;
  FontStyle({this.txtcolor = Colors.black});
  //---- FontWeight  Bold ----

  TextStyle fs_32_Bold() => GoogleFonts.roboto(
        fontSize: 32,
        fontWeight: FontWeight.w600,
        color: txtcolor,
      );
  TextStyle fs_24_Bold() => GoogleFonts.roboto(
        fontSize: 24,
        fontWeight: FontWeight.w400,
        color: txtcolor,
      );
  TextStyle fs_20_Bold() => GoogleFonts.roboto(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: txtcolor,
      );
  TextStyle fs_16_Bold() => GoogleFonts.roboto(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: txtcolor,
      );
  TextStyle fs_14_Bold() => GoogleFonts.roboto(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: txtcolor,
      );
  TextStyle fs_12_Bold() => GoogleFonts.roboto(
        fontSize: 12,
        fontWeight: FontWeight.w700,
        color: txtcolor,
      );
  TextStyle fs_10_Bold() => GoogleFonts.roboto(
        fontSize: 10,
        fontWeight: FontWeight.w700,
        color: txtcolor,
      );

// ---- FontWeight Regular ---

  TextStyle fs_16_Regular() => GoogleFonts.roboto(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: txtcolor,
      );
  TextStyle fs_14_Regular() => GoogleFonts.roboto(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: txtcolor,
      );
  TextStyle fs_12_Regular() => GoogleFonts.roboto(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: txtcolor,
      );
  TextStyle fs_10_Regular() => GoogleFonts.roboto(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        color: txtcolor,
      );
}
