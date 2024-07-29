import 'package:flutter/material.dart';
import 'package:flutter_absensi/data/style/color.dart';
import 'package:google_fonts/google_fonts.dart';

class MainStyle {
  static final light = ThemeData(
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: AppColor.primary,
      secondary: AppColor.white,
    ),
    scaffoldBackgroundColor: AppColor.white,
    primarySwatch: AppColor.primary,
    brightness: Brightness.light,
    textTheme: TextTheme(
      displayLarge: GoogleFonts.poppins().copyWith(
        fontSize: 93,
        fontWeight: FontWeight.w300,
        overflow: TextOverflow.ellipsis,
      ),
      displayMedium: GoogleFonts.poppins().copyWith(
        fontSize: 58,
        fontWeight: FontWeight.w300,
        letterSpacing: 0,
        overflow: TextOverflow.ellipsis,
      ),
      headlineLarge: GoogleFonts.poppins().copyWith(
        fontSize: 40,
        fontWeight: FontWeight.w400,
        overflow: TextOverflow.ellipsis,
      ),
      headlineMedium: GoogleFonts.poppins().copyWith(
        fontSize: 32,
        fontWeight: FontWeight.w400,
        overflow: TextOverflow.ellipsis,
      ),
      headlineSmall: GoogleFonts.poppins().copyWith(
        fontSize: 24,
        fontWeight: FontWeight.w400,
        overflow: TextOverflow.ellipsis,
      ),
      titleLarge: GoogleFonts.poppins().copyWith(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        overflow: TextOverflow.ellipsis,
      ),
      titleMedium: GoogleFonts.poppins().copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        overflow: TextOverflow.ellipsis,
      ),
      titleSmall: GoogleFonts.poppins().copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        overflow: TextOverflow.ellipsis,
      ),
      bodyLarge: GoogleFonts.poppins().copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        overflow: TextOverflow.ellipsis,
      ),
      bodyMedium: GoogleFonts.poppins().copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        overflow: TextOverflow.ellipsis,
      ),
      bodySmall: GoogleFonts.poppins().copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        overflow: TextOverflow.ellipsis,
      ),
      labelLarge: GoogleFonts.poppins().copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        overflow: TextOverflow.ellipsis,
      ),
      labelMedium: GoogleFonts.poppins().copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        overflow: TextOverflow.ellipsis,
      ),
      labelSmall: GoogleFonts.poppins().copyWith(
        fontSize: 10,
        fontWeight: FontWeight.w500,
        overflow: TextOverflow.ellipsis,
      ),
    ),
  );

  static final dark = ThemeData(
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: AppColor.primary,
      secondary: AppColor.white,
    ),
    scaffoldBackgroundColor: AppColor.black,
    brightness: Brightness.dark,
    textTheme: TextTheme(
      displayLarge: GoogleFonts.poppins().copyWith(
        fontSize: 93,
        fontWeight: FontWeight.w300,
        overflow: TextOverflow.ellipsis,
      ),
      displayMedium: GoogleFonts.poppins().copyWith(
        fontSize: 58,
        fontWeight: FontWeight.w300,
        letterSpacing: 0,
        overflow: TextOverflow.ellipsis,
      ),
      headlineLarge: GoogleFonts.poppins().copyWith(
        fontSize: 40,
        fontWeight: FontWeight.w400,
        overflow: TextOverflow.ellipsis,
      ),
      headlineMedium: GoogleFonts.poppins().copyWith(
        fontSize: 32,
        fontWeight: FontWeight.w400,
        overflow: TextOverflow.ellipsis,
      ),
      headlineSmall: GoogleFonts.poppins().copyWith(
        fontSize: 24,
        fontWeight: FontWeight.w400,
        overflow: TextOverflow.ellipsis,
      ),
      titleLarge: GoogleFonts.poppins().copyWith(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        overflow: TextOverflow.ellipsis,
      ),
      titleMedium: GoogleFonts.poppins().copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        overflow: TextOverflow.ellipsis,
      ),
      titleSmall: GoogleFonts.poppins().copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        overflow: TextOverflow.ellipsis,
      ),
      bodyLarge: GoogleFonts.poppins().copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        overflow: TextOverflow.ellipsis,
      ),
      bodyMedium: GoogleFonts.poppins().copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        overflow: TextOverflow.ellipsis,
      ),
      bodySmall: GoogleFonts.poppins().copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        overflow: TextOverflow.ellipsis,
      ),
      labelLarge: GoogleFonts.poppins().copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        overflow: TextOverflow.ellipsis,
      ),
      labelMedium: GoogleFonts.poppins().copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        overflow: TextOverflow.ellipsis,
      ),
      labelSmall: GoogleFonts.poppins().copyWith(
        fontSize: 10,
        fontWeight: FontWeight.w500,
        overflow: TextOverflow.ellipsis,
      ),
    ),
  );
}
