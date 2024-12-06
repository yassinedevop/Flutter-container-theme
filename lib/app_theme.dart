import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: const Color(0xFF6368EC), // Primary color
    scaffoldBackgroundColor: const Color(0xFF0f1923), // Background color
    cardColor: const Color(0xFF1A253B), // Cards color
    textTheme: TextTheme(
      displayLarge: GoogleFonts.lato(
        textStyle: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
      ),
      bodyLarge: GoogleFonts.roboto(
        textStyle: const TextStyle(color: Colors.white, fontSize: 16),
      ),
      bodyMedium: GoogleFonts.openSans(
        textStyle: const TextStyle(color: Colors.white, fontSize: 14),
      ),
      titleMedium: GoogleFonts.montserrat(
        textStyle: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
      ),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Color(0xFF6368EC), // Primary color
      textTheme: ButtonTextTheme.primary,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF6368EC), // Primary color
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color(0xFF6368EC), // Primary color
    ),
    colorScheme: const ColorScheme.light(
      primary: Color(0xFF6368EC), // Primary color
      secondary: Color(0xFF6368EC), // Primary color
      surface: Color(0xFF1A253B), // Cards color
    ),
    navigationBarTheme: const NavigationBarThemeData(
      backgroundColor: Color(0xFF0f1923),
      indicatorColor: Color(0xFF6368EC),
      shadowColor: Colors.white30,
      overlayColor: WidgetStatePropertyAll(Color(0xFF6368EC)),
    ),
    snackBarTheme: const SnackBarThemeData(
      backgroundColor: Color(0xFF1A253B), // Cards color
      contentTextStyle: TextStyle(color: Colors.white),
    ),
    sliderTheme: SliderThemeData(
      inactiveTrackColor: const Color(0xFF6368EC).withOpacity(0.4),
      inactiveTickMarkColor: const Color(0xFF1A253B),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    shadowColor: Colors.white30,
    primaryColor: const Color(0xFF6368EC), // Primary color
    scaffoldBackgroundColor: const Color(0xFF0f1923), // Background color
    cardColor: const Color(0xFF1A253B), // Cards color
    textTheme: TextTheme(
      displayLarge: GoogleFonts.lato(
        textStyle: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
      ),
      bodyLarge: GoogleFonts.roboto(
        textStyle: const TextStyle(color: Colors.white, fontSize: 16),
      ),
      bodyMedium: GoogleFonts.openSans(
        textStyle: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
      ),
      titleMedium: GoogleFonts.montserrat(
        textStyle: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
      ),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Color(0xFF6368EC), // Primary color
      textTheme: ButtonTextTheme.primary,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF0f1923), // Primary color
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color(0xFF6368EC), // Primary color
    ),
    colorScheme: const ColorScheme.dark(
      primary: Color(0xFF6368EC), // Primary color
      secondary: Color(0xFF6368EC), // Primary color
      surface: Color(0xFF1A253B), // Cards color
    ),
    snackBarTheme: const SnackBarThemeData(
      backgroundColor: Color(0xFF1A253B), // Cards color
      contentTextStyle: TextStyle(color: Colors.white),
    ),
    sliderTheme: SliderThemeData(
      inactiveTrackColor: const Color(0xFF6368EC).withOpacity(0.4),
      inactiveTickMarkColor: const Color(0xFF1A253B),
    ),
  );
}
