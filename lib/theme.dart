import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Apptheme {
  static TextTheme lighttheme = TextTheme(
    // this theme is used for the button
    displayMedium: GoogleFonts.bungeeSpice(fontSize: 18.sp),

    // this theme is used for  the Appbar titles
    displayLarge: GoogleFonts.bebasNeue(color: Colors.black, fontSize: 18.sp),

    // this theme is used for the scorces and title
    headlineMedium: GoogleFonts.roboto(color: Colors.black, fontSize: 14.sp),

    headlineSmall: GoogleFonts.bebasNeue(color: Colors.white, fontSize: 18.sp),
  );
  static TextTheme darktheme = TextTheme(
    // this theme is used for the button
    displayMedium: GoogleFonts.bungeeSpice(fontSize: 18.sp),

    // this theme is used for  the Appbar titles
    displayLarge: GoogleFonts.bebasNeue(color: Colors.white, fontSize: 18.sp),

    // this theme is used for the scorces and title
    headlineMedium: GoogleFonts.roboto(color: Colors.white, fontSize: 14.sp),

    headlineSmall: GoogleFonts.bebasNeue(color: Colors.white, fontSize: 18.sp),
  );
  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      textTheme: lighttheme,
    );
  }

  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      textTheme: darktheme,
    );
  }
}
