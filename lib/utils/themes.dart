import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemes {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        fontFamily: GoogleFonts.quicksand().fontFamily,
        cardColor: const Color(0xffBE40F9),
        canvasColor: const Color(0xffF5F5F5),
        primaryColor: const Color(0xffBE40F9),

        // THIS IS THE THEMES FOR THE FONTS
        textTheme: TextTheme(
          headline1: TextStyle(
            fontFamily: GoogleFonts.quicksand().fontFamily,
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: const Color(0xffBE40F9),
          ),
          headline2: TextStyle(
              fontFamily: GoogleFonts.quicksand().fontFamily,
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold),
          bodyText1: TextStyle(
            fontSize: 20,
            fontFamily: GoogleFonts.poppins().fontFamily,
          ),
        ),

        // Themes for icons
        iconTheme: const IconThemeData(color: Colors.white, size: 40),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        fontFamily: GoogleFonts.quicksand().fontFamily,
        cardColor: const Color.fromARGB(255, 40, 8, 54),
        canvasColor: const Color(0xffF5F5F5),
        primaryColor: const Color.fromARGB(255, 40, 8, 54),

        // THIS IS THE THEMES FOR THE FONTS
        textTheme: TextTheme(
          headline1: TextStyle(
            fontFamily: GoogleFonts.quicksand().fontFamily,
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 40, 8, 54),
          ),
          headline2: TextStyle(
              fontFamily: GoogleFonts.quicksand().fontFamily,
              fontSize: 24,
              fontWeight: FontWeight.bold),
          bodyText1: TextStyle(
            fontSize: 20,
            fontFamily: GoogleFonts.poppins().fontFamily,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white, size: 40),
      );
}
