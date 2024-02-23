// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/homeScreen.dart';
import 'package:islami/tapScreen/quran/sura_detals_screen.dart';
import 'package:islami/tapScreen/radio/radioTap.dart';

class islami_app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        suraDetalsScreen.routeName:(_)=> suraDetalsScreen(),
      },
      theme:AppTheme.lightTheme,
      darkTheme: AppTheme.DarkTheme,
      themeMode: ThemeMode.light,
      initialRoute: HomeScreen.routeName,
    );
  }
}


