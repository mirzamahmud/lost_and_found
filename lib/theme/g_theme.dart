import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GTheme {
  GTheme._();
  static ThemeData lightTheme = ThemeData.light().copyWith(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    // scaffoldBackgroundColor: secondaryColor,
    textSelectionTheme: const TextSelectionThemeData(cursorColor: primaryColor),
    colorScheme: const ColorScheme.light(
        primary: primaryColor, secondary: secondaryColor, onError: errorColor),
    /*cardTheme: const CardTheme(
      color: cardColor,
    ),*/
    iconTheme: const IconThemeData(
      color: primaryColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: const TextStyle(color: darkText),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(
          width: 2,
          color: primaryColor,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(
          width: 2,
          color: deactivatedColor,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(
          width: 2,
          color: deactivatedColor,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(
          width: 2,
          color: errorColor,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(
          width: 2,
          color: secondaryColor,
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
    ),
    appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle.light,
        titleTextStyle: TextStyle(
            color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold)),
  );

  static const TextTheme textTheme = TextTheme(
    headline4: display1,
    headline5: headline,
    headline6: title,
    subtitle2: subtitle,
    bodyText2: body2,
    bodyText1: body1,
    caption: caption,
  );

  static const TextStyle display1 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 36,
    letterSpacing: 0.4,
    height: 0.9,
    color: darkText,
  );

  static const TextStyle headline = TextStyle(
    fontWeight: FontWeight.bold,
    overflow: TextOverflow.ellipsis,
    fontSize: 22,
    letterSpacing: 0.27,
  );

  static const TextStyle headline1 = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 35,
      letterSpacing: 0.27,
      color: whiteColor);

  static const TextStyle title = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
    letterSpacing: 0.25,
    color: darkText,
  );

  static const TextStyle subtitle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    letterSpacing: -0.04,
    color: darkText,
  );

  static const TextStyle body2 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: 0.2,
    color: darkText,
  );

  static const TextStyle body1 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    letterSpacing: -0.05,
    color: darkText,
  );

  static const TextStyle caption =
      TextStyle(fontWeight: FontWeight.w400, fontSize: 12, letterSpacing: 0.2);
}

// Global app colors
const primaryColor = Color(0xffff5629);
const secondaryColor = Color(0xffff9800);

const errorColor = Colors.red;
const appBarBackgroundColor = Color(0xff000513);
const backgroundColor = Color(0xff0070C0);

const linkColor = Color(0xff002060);
const buttonColor = Color(0xff00bdd1);
const confirmButtonColor = Color(0xff119532);
const cardHighlightColor = Color(0xff97d5a7);

const whiteColor = Color(0xFFFFFFFF);
const blackColor = Color(0xFF000000);
const deactivatedColor = Color(0xFF8E8D8D);
const hintColor = Color(0x80C1B8B8);
const lightGreyColor = Color(0xFFE0DFDF);

const Color darkText = Color(0xFF17262A);
const containerBackground = Color(0xFF364A54);
const Color dismissibleBackground = Color(0xFF364A54);
const Color spacer = Color(0xFFF2F2F2);

// Global app padding
const double hColumnHorizontal = 8.0;
const double hColumnVertical = 10.0;
