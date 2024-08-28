import 'package:logger/logger.dart'; 
import 'package:flutter/material.dart';

import 'colors.dart';

Logger logger = Logger(
  printer: PrettyPrinter(),
);
ThemeData themeData() {
  return ThemeData(
      fontFamily: 'Mulish',
      appBarTheme: _appBarTheme(),
      textTheme: textTheme(),
      floatingActionButtonTheme: _floatingActionButtonThemeData(),
      outlinedButtonTheme: _outlinedButtonTheme(),
      textButtonTheme: _textButtonTheme(),
      elevatedButtonTheme: _elevatedButton(),
      inputDecorationTheme: inputDecorationTheme());
}

FloatingActionButtonThemeData _floatingActionButtonThemeData() {
  return const FloatingActionButtonThemeData(
      backgroundColor: themePrimary, elevation: 0);
}

OutlinedButtonThemeData _outlinedButtonTheme() {
  return OutlinedButtonThemeData(
      style: ButtonStyle(
        side:  MaterialStateProperty.all<BorderSide>(BorderSide(color: themePrimary)),
      shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
      ),
          foregroundColor: MaterialStateProperty.all<Color>(themePrimary),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent)));
}

TextButtonThemeData _textButtonTheme() {
  return TextButtonThemeData(
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          )),
          foregroundColor: MaterialStateProperty.all<Color>(white),
          backgroundColor: MaterialStateProperty.all(themePrimary)));
}
ElevatedButtonThemeData _elevatedButton() {
  return ElevatedButtonThemeData(
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          )),
          foregroundColor: MaterialStateProperty.all<Color>(white),
          backgroundColor: MaterialStateProperty.all(mainColor)));
}

TextTheme textTheme() {
  return const TextTheme(

    headline1: TextStyle(color: black),
    headline2: TextStyle(color: black),
    headline3: TextStyle(color: black),
    headline4: TextStyle(color: black),
    headline5: TextStyle(color: black),
    headline6: TextStyle(color: black),
    bodyText1: TextStyle(color: black),
    bodyText2: TextStyle(color: textThemeGrey),
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder =  OutlineInputBorder(
    borderSide: BorderSide(color: textThemeGrey.withOpacity(.6)),
    borderRadius:const BorderRadius.all(Radius.circular(10.0)),
    gapPadding: 10,
    
  );
  OutlineInputBorder outlineInputBorderFocused =  OutlineInputBorder(
    borderSide: BorderSide(color: themePrimary.withOpacity(.6)),
    borderRadius:const BorderRadius.all(Radius.circular(10.0)),
    gapPadding: 10,
    
  );
  return InputDecorationTheme(
    // filled: true,
    // fillColor: textThemeGrey,

    // If  you are using latest version of flutter then lable text and hint text shown like this
    // if you r using flutter less then 1.20.* then maybe this is not working properly
    // if we are define our floatingLabelBehavior in our theme then it's not applayed
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorderFocused,
    border: outlineInputBorder,
  );
}

AppBarTheme _appBarTheme() {
  return const AppBarTheme(
    backgroundColor: transparent,
    elevation: 0,
    foregroundColor: black,
    shadowColor: transparent,
    centerTitle: true,
    surfaceTintColor: transparent
  );
}

//*button themes

ButtonStyle defaultButtonTheme = ButtonStyle(
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50.0),
    )),
    foregroundColor: MaterialStateProperty.all<Color>(white),
    backgroundColor: MaterialStateProperty.all(themePrimary));

ButtonStyle inactiveButtonTheme = ButtonStyle(
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50.0),
    )),
    foregroundColor: MaterialStateProperty.all<Color>(black),
    backgroundColor: MaterialStateProperty.all(textThemeGrey.withOpacity(.3)));

ButtonStyle outlineButtonDefault = ButtonStyle(
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
      side: const BorderSide(color: themePrimary),
      borderRadius: BorderRadius.circular(50.0),
    )),
    foregroundColor: MaterialStateProperty.all<Color>(themePrimary),
    backgroundColor: MaterialStateProperty.all(white.withOpacity(.3)));
