import 'package:flutter/material.dart';


class AppTheme{
  static Color primaryLigh =Color(0xffB7935F);
  static Color black = Color(0xff242424);
  static ThemeData lightTheme =  ThemeData(
    primaryColor:primaryLigh ,
      scaffoldBackgroundColor: Colors.transparent,
       inputDecorationTheme: InputDecorationTheme(),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
     selectedItemColor: black,
    backgroundColor: primaryLigh,
     unselectedIconTheme: IconThemeData(color: Colors.white),
      ),
    appBarTheme: AppBarTheme(backgroundColor: Colors.transparent,centerTitle: true,
    titleTextStyle: TextStyle(fontSize: 30 ,
    fontWeight: FontWeight.bold,
    color: black),
    ),
    textTheme: TextTheme(headlineSmall: TextStyle(fontSize:25,fontWeight: FontWeight.w400,color: black ) ),
  );
  static ThemeData DarkTheme =  ThemeData(
    scaffoldBackgroundColor: Colors.black,
  );
}