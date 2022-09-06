import 'package:flutter/material.dart';
import 'package:travelling_kit_ui/app/colors/application_colors.dart';

class ApplicationTheme {
  ///defining light color choices
  static const lightThemeColorScheme = ColorScheme(
      brightness: Brightness.light,
      primary: ApplicationColors.orangePrimaryColor,
      onPrimary: ApplicationColors.blackWordsColor,
      secondary: ApplicationColors.redSecondaryColor,
      onSecondary: ApplicationColors.blackWordsColor,
      error: ApplicationColors.applicationErrorColor,
      onError: ApplicationColors.whiteBackgroundColor,
      background: ApplicationColors.whiteBackgroundColor,
      onBackground: ApplicationColors.blackWordsColor,
      surface: ApplicationColors.whiteBackgroundColor,
      onSurface: ApplicationColors.blackWordsColor);

  ///defining black color choices
  static const darkThemeColorScheme = ColorScheme(
      brightness: Brightness.dark,
      primary: ApplicationColors.orangePrimaryColor,
      onPrimary: ApplicationColors.whiteBackgroundColor,
      secondary: ApplicationColors.redSecondaryColor,
      onSecondary: ApplicationColors.whiteBackgroundColor,
      error: ApplicationColors.applicationErrorColor,
      onError: ApplicationColors.blackWordsColor,
      background: ApplicationColors.blackWordsColor,
      onBackground: ApplicationColors.whiteBackgroundColor,
      surface: ApplicationColors.blackWordsColor,
      onSurface: ApplicationColors.whiteBackgroundColor);

  ///defining light theme apperance
  static final lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: lightThemeColorScheme.background,
      actionsIconTheme: IconThemeData(
        color: lightThemeColorScheme.onSurface,
        size: 24,
      ),
      iconTheme: IconThemeData(
        color: lightThemeColorScheme.onSurface,
        size: 24,
      ),
      centerTitle: true,
    ),
    scaffoldBackgroundColor: lightThemeColorScheme.background,
    colorScheme: lightThemeColorScheme,
    iconTheme: const IconThemeData(
      color: ApplicationColors.greyWordsColor,
      size: 20,
    ),
    textTheme:   TextTheme(
      headline2: const TextStyle(
        fontFamily: 'Urbanist',
        fontSize: 20,
        fontWeight: FontWeight.w700,

      ),
      headline6: const TextStyle(
        fontFamily: 'Urbanist',
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      bodyText2: TextStyle(
        fontFamily: 'Urbanist',
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: lightThemeColorScheme.onSurface,
      ),
      button: const TextStyle(
        fontFamily: 'Urbanist',
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      caption: const TextStyle(
        fontFamily: 'Urbanist',
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: ApplicationColors.greyWordsColor,
      ),
      bodyText1: const TextStyle(
        fontFamily: 'Urbanist',
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      headline1: const TextStyle(
          fontFamily: 'Urbanist',
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: ApplicationColors.redSecondaryColor),
    ),
  );

  ///defining black theme apperance
  static final darkTheme = ThemeData(
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: darkThemeColorScheme.background,
      actionsIconTheme: IconThemeData(
        color: darkThemeColorScheme.onSurface,
        size: 24,
      ),
      iconTheme: IconThemeData(
        color: darkThemeColorScheme.onSurface,
        size: 24,
      ),
      centerTitle: true,
    ),
    scaffoldBackgroundColor: darkThemeColorScheme.background,
    colorScheme: darkThemeColorScheme,
    iconTheme: const IconThemeData(
      color: ApplicationColors.greyWordsColor,
      size: 20,
    ),
    textTheme: const TextTheme(
      headline2: TextStyle(
        fontFamily: 'Urbanist',
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
      headline6: TextStyle(
        fontFamily: 'Urbanist',
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      bodyText2: TextStyle(
        fontFamily: 'Urbanist',
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      button: TextStyle(
        fontFamily: 'Urbanist',
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      caption: TextStyle(
        fontFamily: 'Urbanist',
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: ApplicationColors.greyWordsColor,
      ),
      bodyText1: TextStyle(
        fontFamily: 'Urbanist',
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      headline1: TextStyle(
          fontFamily: 'Urbanist',
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: ApplicationColors.redSecondaryColor),
    ),
  );
}
