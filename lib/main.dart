import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:our_wedding_app/app/shared/colors.dart';
import 'app/bride/home-bride/home_bride.dart';
import 'app/bride/home-bride/guests_list.dart';
import 'app/business/home-business/home_business.dart';
import 'app/shared/splashscreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // Set this to false to hide the debug banner

      title: 'To-Do List with Calendar',
      theme: ThemeData(
        primaryColor: purple_color,
        hoverColor: blue_color,
        focusColor: blue_color,
        fontFamily: 'Changa', // Set the default font family to Changa
      ),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'), // English
        const Locale('ar', 'SA'), // Arabic
      ],
      home: SplashScreen(),
    );
  }
}
