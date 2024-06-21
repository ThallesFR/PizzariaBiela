import 'package:flutter/material.dart';
import 'package:pizzaria_biella/theme/app_style.dart';
import 'package:pizzaria_biella/theme/app_color.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: LightThemeColor.fundo,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: LightThemeColor.primary_1,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      // iconTheme: IconThemeData(color: Colors.black45),
      centerTitle: true,
      titleTextStyle: texto_2,
    ),
    
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: LightThemeColor.primary_1,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ))),

    hintColor: Colors.black45,
    inputDecorationTheme: InputDecorationTheme(
      border: const OutlineInputBorder(borderSide: BorderSide.none),
      enabledBorder: inputs,
      focusedBorder: inputs,
      filled: true,
      contentPadding: const EdgeInsets.all(20),
      fillColor: Colors.white,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: LightThemeColor.primary_1,
    ),
    textTheme: const TextTheme(
      displayLarge: texto_1,
      displayMedium: texto_2,
      displaySmall: texto_3,
    ),
  );

  // static ThemeData darkTheme = ThemeData(
  //   canvasColor: DarkThemeColor.primaryDark,
  //   scaffoldBackgroundColor: DarkThemeColor.primaryDark,
  //   floatingActionButtonTheme: const FloatingActionButtonThemeData(
  //     backgroundColor: LightThemeColor.accent,
  //   ),
  //   appBarTheme: const AppBarTheme(
  //     backgroundColor: Colors.transparent,
  //     elevation: 0,
  //     toolbarTextStyle: TextStyle(color: Colors.white),
  //     centerTitle: true,
  //     iconTheme: IconThemeData(color: Colors.white),
  //     titleTextStyle: h2Style,
  //   ),
  //   elevatedButtonTheme: ElevatedButtonThemeData(
  //     style: ButtonStyle(
  //       backgroundColor: MaterialStateProperty.all<Color>(
  //         LightThemeColor.accent,
  //       ),
  //     ),
  //   ),
  //   hintColor: Colors.white60,
  //   inputDecorationTheme: InputDecorationTheme(
  //     enabledBorder: inputs,
  //     focusedBorder: inputs,
  //     filled: true,
  //     contentPadding: const EdgeInsets.all(20),
  //     fillColor: DarkThemeColor.primaryLight,
  //   ),
  //   bottomNavigationBarTheme: const BottomNavigationBarThemeData(
  //     type: BottomNavigationBarType.fixed,
  //     backgroundColor: DarkThemeColor.primaryLight,
  //     selectedItemColor: LightThemeColor.accent,
  //     unselectedItemColor: Colors.white70,
  //   ),
  //   textTheme: TextTheme(
  //     displayLarge: h1Style.copyWith(color: Colors.white),
  //     displayMedium: h2Style.copyWith(color: Colors.white),
  //     displaySmall: h3Style.copyWith(color: Colors.white),
  //     headlineMedium: h4StyleLight.copyWith(color: Colors.white),
  //     headlineSmall: h5StyleLight.copyWith(color: Colors.white),
  //     bodyLarge: bodyTextLight.copyWith(color: Colors.white),
  //     titleMedium: subtitleLight.copyWith(color: Colors.white60),
  //   ),
  //   iconTheme: const IconThemeData(color: Colors.white),
  //   bottomAppBarTheme: const BottomAppBarTheme(
  //     color: DarkThemeColor.primaryLight,
  //   ),
  // );
}
