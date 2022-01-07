import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:expense_tracker_seiko/helpers/colors/color.dart';
import 'package:expense_tracker_seiko/screens/add_expense_screen.dart';
import 'package:expense_tracker_seiko/screens/goal_screen.dart';
import 'package:expense_tracker_seiko/screens/home_screen.dart';
import 'package:expense_tracker_seiko/screens/setting_screen.dart';
import 'package:expense_tracker_seiko/screens/statics_screen.dart';
import 'package:expense_tracker_seiko/widgets/pie_chart.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int currentIndex = 0;

  List<Widget> _pages = [
    HomeScreen(),
    GoalScreen(),
    StaticsScreen(),
    SettingScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _pages[currentIndex],
      floatingActionButton: FloatingActionButton(
        elevation: 0.0,
        backgroundColor: kPrimary,
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15))),
              context: context,
              builder: (_) => Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 20),
                      Container(
                        height: 10,
                        width: 70,
                        decoration: BoxDecoration(
                            color: kPrimary,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      SizedBox(height: 20),
                      ListTile(
                          leading: Icon(
                            Icons.trending_up,
                            color: kPrimary,
                            size: 32,
                          ),
                          title: Text("ဝင်ငွေမှတ်မည်"),
                          trailing: IconButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => AddExpenseScreen()));
                            },
                            icon: Icon(
                              LineIcons.plus,
                              color: kPrimary,
                              size: 32,
                            ),
                          )),
                      ListTile(
                        leading: Icon(
                          Icons.trending_down,
                          color: kPrimary,
                          size: 32,
                        ),
                        title: Text("ထွက်ငွေမှတ်မည်"),
                        trailing: IconButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => AddExpenseScreen()));
                          },
                          icon: Icon(
                            LineIcons.plus,
                            color: kPrimary,
                            size: 32,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          LineIcons.piggyBank,
                          color: kPrimary,
                          size: 32,
                        ),
                        title: Text("Goal သတ်မှတ်မည်"),
                        trailing: IconButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => AddExpenseScreen()));
                          },
                          icon: Icon(
                            LineIcons.plus,
                            color: kPrimary,
                            size: 32,
                          ),
                        ),
                      )
                    ],
                  ));
          // Navigator.of(context)
          //     .push(MaterialPageRoute(builder: (_) => AddExpenseScreen()));
        },
        child: Icon(
          LineIcons.plus,
          size: 30,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        elevation: 0.0,
        notchSmoothness: NotchSmoothness.sharpEdge,
        iconSize: 28,
        splashColor: kPrimary,
        splashRadius: 15,
        activeColor: kPrimary,
        inactiveColor: Colors.grey,
        gapLocation: GapLocation.center,
        activeIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        icons: [
          LineIcons.wallet,
          LineIcons.piggyBank,
          LineIcons.lineChart,
          LineIcons.cog
        ],
      ),
    );
  }

  List<FlSpot> getFlSpots(int limit) {
    List<FlSpot> list = [];

    for (var i = 1; i <= limit; i++) {
      list.add(
        FlSpot(i.toDouble(), 15),
      );
    }

    return list;
  }
}
