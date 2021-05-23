import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum ThemeType { Light, Dark }

/// List of available colors for this theme
class ThemeColors {
  ///Primary actions, buttons, links & success states
  static const Color green50 = Color(0xFF31B057);

  ///Pressed states & creating gradients
  static const Color green40 = Color(0xFF51C273);

  static const Color green80 = Color(0xFF0F752E);

  ///Product specific color for MY-FOOD
  static const Color red50 = Color(0xFFE52A34);

  ///All error text, negative states
  static const Color red60 = Color(0xFFCF212A);

  ///Product specific color for T-PAY
  static const Color blue50 = const Color(0xFF388BF2);

  static const MaterialColor blue = MaterialColor(
    0xFF388BF2,
    <int, Color>{
      100: Color(0xFFDBEBFF),
      400: Color(0xFF5BA0f5),
      500: blue50,
      600: Color(0xFF216BC4),
      700: Color(0xFF1A5BAC),
      800: Color(0xFF114D96),
    },
  );

  ///Product specific color for MY-POINTS
  static const Color yellow50 = Color(0xFFFBAF18);

  ///Product specific color for GO-TIX
  static const Color orange50 = Color(0xFFFC8338);

  ///Title texts, icons, captions, input fields & everywhere else where black is required
  static const Color black100 = Color(0xFF25282B);

  ///Body text & component description
  static const Color black80 = Color(0xFF52575C);

  static const Color black50 = Color(0xFF25282B);

  ///Inactive states of icons & other components
  static const Color black60 = Color(0xFFA0A4A8);

  ///Default texts in text field, disabled states of buttons, icons & other components
  static const Color black40 = Color(0xFFCACCCF);

  ///Dividers & borders
  static const Color black10 = Color(0xFFE8E8E8);
}

/// Defined Style for Light and Dark Theme
class ThemeStyle {
  static ThemeData getAppThemeData(BuildContext context, ThemeType themeType) {
    if (themeType == ThemeType.Light) {
      return ThemeData.light().copyWith(
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: ZoomPageTransitionsBuilder(),
          },
        ),
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
      );
    } else {
      return ThemeData.dark().copyWith(
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: ZoomPageTransitionsBuilder(),
          },
        ),
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
      );
    }
  }
}
