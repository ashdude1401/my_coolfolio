import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
//colors
  // static const Color kPrimaryColor = Color.fromRGBO(41, 45, 62, 1);
  static const Color kPrimaryColor = Color(0xFFBABABA);
  static const Color kSecondaryColor = Color(0xFFFF621F);
  static const Color kPrimaryAccentColor = Color.fromRGBO(139, 92, 246, 1);
  static Color creamColor = const Color(0xffffffff);
  static Color darkcreamColor = const Color.fromARGB(255, 36, 41, 51);

  static const Color linercolor1 = Colors.white;
  static const Color linercolor2 = Colors.grey;
  static const Color linercolor3 = Color(0xFFFF4C7A);
  static const Color linercolor4 = Color(0xFF1E1E1E);

  //theme
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        fontFamily: GoogleFonts.vt323().fontFamily,
        cardColor: Colors.white,
        canvasColor: creamColor,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kSecondaryColor,
            foregroundColor: Color(0xFFBABABA),
            padding:
                const EdgeInsets.symmetric(horizontal: 18.0, vertical: 14.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: kSecondaryColor,
          secondary: kPrimaryColor,
          background: kPrimaryColor.withOpacity(0.1),
          brightness: Brightness.light,
        ),
        textTheme:
            GoogleFonts.vt323TextTheme(ThemeData.light().textTheme).copyWith(
          bodySmall: const TextStyle(color: kPrimaryColor),
          bodyLarge: const TextStyle(color: kPrimaryColor),
          bodyMedium: const TextStyle(color: kPrimaryColor),
          displayLarge: const TextStyle(color: kPrimaryColor),
          displayMedium: const TextStyle(color: kPrimaryColor),
          displaySmall: const TextStyle(color: kPrimaryColor),
          headlineLarge: const TextStyle(color: kPrimaryColor),
          headlineMedium: const TextStyle(color: kPrimaryColor),
          headlineSmall: const TextStyle(color: kPrimaryColor),
          titleLarge: const TextStyle(color: kPrimaryColor),
          titleMedium: const TextStyle(color: kPrimaryColor),
          titleSmall: const TextStyle(color: kPrimaryColor),
          labelLarge: const TextStyle(color: kPrimaryColor),
          labelSmall: const TextStyle(color: kPrimaryColor),
          labelMedium: const TextStyle(color: kPrimaryColor),
        ),
        appBarTheme: const AppBarTheme(
          color: kPrimaryAccentColor,
          elevation: 1.0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        fontFamily: GoogleFonts.vt323().fontFamily,
        cardColor: Colors.black,
        canvasColor: darkcreamColor,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.white,
          brightness: Brightness.dark,
        ),
        textTheme: GoogleFonts.interTextTheme(ThemeData.dark().textTheme),
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 1.0,
          iconTheme: IconThemeData(color: Colors.white),
        ),
      );
}
