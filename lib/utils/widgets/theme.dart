import 'package:flutter/material.dart';

import 'style.dart';

ThemeData appTheme(context, isLightTheme) {
  return ThemeData(
      scaffoldBackgroundColor:
          isLightTheme ? ColorSets.colorWhite : ColorSets.colorBrand2,
      canvasColor: ColorSets.colorWhite,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      fontFamily: 'Raleway',
      primaryColor: isLightTheme ? ColorSets.colorWhite : ColorSets.colorBrand2,
      accentColor: isLightTheme ? ColorSets.colorDark : ColorSets.colorWhite,
      backgroundColor:
          isLightTheme ? ColorSets.colorWhite : ColorSets.colorBrand2,
      indicatorColor:
          isLightTheme ? ColorSets.colorBrand2 : ColorSets.colorWhite,
      buttonColor: isLightTheme ? ColorSets.colorBrand1 : ColorSets.colorBrand2,
      hintColor: isLightTheme ? ColorSets.colorBrand2 : ColorSets.colorBrand1,
      dividerColor: isLightTheme ? ColorSets.colorWhite : ColorSets.colorDark,
      highlightColor:
          isLightTheme ? ColorSets.colorBrand1 : ColorSets.colorBrand2,
      hoverColor: isLightTheme ? ColorSets.colorBrand1 : ColorSets.colorBrand2,
      focusColor: isLightTheme ? ColorSets.colorBrand1 : ColorSets.colorBrand2,
      disabledColor: Colors.grey,
      textSelectionTheme: TextSelectionThemeData(
        selectionColor:
            isLightTheme ? ColorSets.colorWhite : ColorSets.colorBrand2,
      ),
      cardColor: isLightTheme ? ColorSets.colorDark : ColorSets.colorWhite,
      brightness: isLightTheme ? Brightness.dark : Brightness.light,
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
          colorScheme: isLightTheme ? ColorScheme.dark() : ColorScheme.light()),
      primarySwatch: Colors.grey,
      textTheme: TextTheme(
        caption: TextStyle(
            color: isLightTheme ? ColorSets.colorDark : ColorSets.colorWhite,
            fontSize: FontValues.fz4,
            height: FontValues.lh4,
            fontWeight: FontWeight.w700,
            letterSpacing: 1.2),
        headline1: TextStyle(
            color: isLightTheme ? ColorSets.colorDark : ColorSets.colorWhite,
            fontSize: FontValues.fz1,
            height: FontValues.lh1,
            fontWeight: FontWeight.w600),
        headline2: TextStyle(
            color: isLightTheme ? ColorSets.colorDark : ColorSets.colorWhite,
            fontSize: FontValues.fz2,
            height: FontValues.lh2,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.5),
        headline3: TextStyle(
            color: isLightTheme ? ColorSets.colorDark : ColorSets.colorWhite,
            fontSize: FontValues.fz3,
            height: FontValues.lh3,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.5),
        headline4: TextStyle(
            color: isLightTheme ? ColorSets.colorDark : ColorSets.colorWhite,
            fontSize: FontValues.fz4,
            height: FontValues.lh4,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.5),
        headline5: TextStyle(
            color: isLightTheme ? ColorSets.colorDark : ColorSets.colorWhite,
            fontSize: FontValues.fz5,
            height: FontValues.lh5,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.5),
        headline6: TextStyle(
            color: isLightTheme ? ColorSets.colorDark : ColorSets.colorWhite,
            fontSize: FontValues.fz6,
            height: FontValues.lh6,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.5),
        bodyText1: TextStyle(
            color: isLightTheme ? ColorSets.colorDark : ColorSets.colorWhite,
            fontSize: FontValues.fz5,
            height: FontValues.lh5,
            letterSpacing: 1),
        bodyText2: TextStyle(
            color: isLightTheme ? ColorSets.colorDark : ColorSets.colorWhite,
            fontSize: FontValues.fz6,
            height: FontValues.lh6,
            letterSpacing: 1),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: UnderlineInputBorder(
          borderSide: BorderSide(
              color: isLightTheme ? ColorSets.colorDark : ColorSets.colorWhite,
              width: 2.0),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
              color: isLightTheme ? ColorSets.colorDark : ColorSets.colorWhite,
              width: 2.0),
        ),
        contentPadding: EdgeInsets.symmetric(
          vertical: FontValues.lh4,
          horizontal: FontValues.lh4,
        ),
        labelStyle: TextStyle(
          fontSize: FontValues.fz5,
          height: FontValues.lh5,
          fontWeight: FontWeight.w600,
          letterSpacing: 1.5,
          decorationColor:
              isLightTheme ? ColorSets.colorDark : ColorSets.colorWhite,
        ),
        hintStyle: TextStyle(
          fontSize: FontValues.fz5,
          height: FontValues.lh5,
          fontWeight: FontWeight.w600,
          letterSpacing: 1.5,
          decorationColor:
              isLightTheme ? ColorSets.colorDark : ColorSets.colorWhite,
        ),
      ));
}
