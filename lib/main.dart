import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

import 'package:expense_tracker_seiko/helpers/colors/color.dart';
import 'package:expense_tracker_seiko/screens/bottom_navigation_screen.dart';
import 'package:expense_tracker_seiko/widgets/bar_chart.dart';
import 'package:expense_tracker_seiko/widgets/pie_chart.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kSecondary,
        fontFamily: GoogleFonts.mulish().fontFamily,
        scaffoldBackgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black, size: 32),
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Colors.black),
            titleTextStyle: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
      ),
      home: const BottomNavigationScreen(),
    );
  }
}
