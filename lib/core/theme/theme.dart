import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/core/utils/app_colors.dart';

ThemeData getAppTheme() {
  return ThemeData(
    primaryColor: AppColor.primary,
    // scaffold background color
    scaffoldBackgroundColor: AppColor.background,
    // appbar theme
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColor.background,
      centerTitle: true,
    ),

    // text theme
    textTheme: TextTheme(
      displayLarge: GoogleFonts.lato(
        fontSize: 32,
        color: AppColor.white,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: GoogleFonts.lato(
        fontSize: 18,
        color: AppColor.white,
      ),
      displaySmall: GoogleFonts.lato(
        fontSize: 16,
        color: AppColor.white.withOpacity(0.44),
      ),
    ),
    //button theme

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    ),
  );
}

ThemeData getAppDarkTheme() {
  return ThemeData(
    primaryColor: AppColor.red,
    // scaffold background color
    scaffoldBackgroundColor: AppColor.red,
    // appbar theme
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColor.background,
      centerTitle: true,
    ),

    // text theme
    textTheme: TextTheme(
      displayLarge: GoogleFonts.lato(
        fontSize: 32,
        color: AppColor.white,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: GoogleFonts.lato(
        fontSize: 18,
        color: AppColor.white,
      ),
      displaySmall: GoogleFonts.lato(
        fontSize: 16,
        color: AppColor.white.withOpacity(0.44),
      ),
    ),
    //button theme

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    ),
  );
}
