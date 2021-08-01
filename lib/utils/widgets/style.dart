import 'package:flutter/material.dart';

class ColorSets {
  // static const Color colorBrand1 = Color(0xffffe53a);
  static const Color colorBrand1 = Color(0xff8340f7);
  static const Color colorBrand2 = Color(0xff262829);
  static const Color colorBrand3 = Color(0xffff3265);
  static const Color colorBrand4 = Color(0xff4d4a50);
  static const Color colorBrand5 = Color(0xfffdcf12);
  static const Color colorWhite = Color(0xffffffff);
  static const Color colorDark = Color(0xff222222);
  static const Color darkGrey = Color(0xff555555);
  static const Color colorGrey = Color(0xfffafafa);
  static const Color colorBorder = Color(0xffdddddd);
}

class FontValues {
  static const double fz1 = 37.0;
  static const double fz2 = 29.0;
  static const double fz3 = 23.0;
  static const double fz4 = 18.0;
  static const double fz5 = 14.0;
  static const double fz6 = 11.0;

  static const double lh1 = 1.513;
  static const double lh2 = 1.551;
  static const double lh3 = 1.565;
  static const double lh4 = 1.611;
  static const double lh5 = 1.642;
  static const double lh6 = 1.636;
}

///text styles
TextStyle appBarTextStyle = TextStyle(
    color: ColorSets.colorBrand2,
    fontSize: FontValues.fz4,
    height: FontValues.lh4,
    fontWeight: FontWeight.w700,
    letterSpacing: 1.2);
TextStyle radioSelectedTextStyle =
    TextStyle(color: Colors.white, fontSize: 18.0);
TextStyle radioUnSelectedTextStyle =
    TextStyle(color: Colors.black, fontSize: 18.0);
TextStyle bigTextStyle = TextStyle(
    color: ColorSets.colorBrand2,
    fontSize: FontValues.fz3,
    height: FontValues.lh3,
    fontWeight: FontWeight.w600);
TextStyle smallTextStyle = TextStyle(
    color: ColorSets.colorBrand2,
    fontSize: FontValues.fz5,
    height: FontValues.lh5);
TextStyle mediumTextStyle = TextStyle(
    color: ColorSets.colorBrand2,
    fontSize: FontValues.fz4,
    height: FontValues.lh4);
TextStyle mediumBoldTextStyle = TextStyle(
    color: ColorSets.colorBrand2,
    fontSize: FontValues.fz4,
    height: FontValues.lh4,
    fontWeight: FontWeight.w600,
    letterSpacing: 1.5);
TextStyle smallBoldTextStyle = TextStyle(
    color: ColorSets.colorBrand2,
    fontSize: FontValues.fz5,
    height: FontValues.lh5,
    fontWeight: FontWeight.w600);

Widget flightShuttleBuilder(
  BuildContext flightContext,
  Animation<double> animation,
  HeroFlightDirection flightDirection,
  BuildContext fromHeroContext,
  BuildContext toHeroContext,
) {
  return SingleChildScrollView(
    child: DefaultTextStyle(
      style: DefaultTextStyle.of(toHeroContext).style,
      child: toHeroContext.widget,
    ),
  );
}

Widget appHead(context, title) {
  return Text(
    title,
    style: Theme.of(context).textTheme.headline4,
  );
}
