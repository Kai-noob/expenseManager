import 'package:expense_tracker_seiko/widgets/pie_chart.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class StaticsScreen extends StatelessWidget {
  const StaticsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          "အစီအရင်ခံစာ",
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                LineIcons.calendarCheck,
                size: 30,
                color: Colors.black,
              ))
        ],
      ),
      body: PieChartSample2(),
    );
  }
}
