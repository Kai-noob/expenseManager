import 'package:card_swiper/card_swiper.dart';
import 'package:expense_tracker_seiko/helpers/colors/color.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class GoalScreen extends StatelessWidget {
  const GoalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "ငွေစုဘူး",
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                  color: kPrimary, borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              height: 250,
              width: double.infinity,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return Icon(
                    Icons.ac_unit,
                    color: Colors.white,
                  );
                },
                autoplay: true,
                itemCount: 3,
                pagination: SwiperPagination(),
                control: SwiperControl(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Goals",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
              leading: CircularPercentIndicator(
                radius: 50.0,
                animation: true,
                animationDuration: 1200,
                lineWidth: 15.0,
                percent: 0.5,
                backgroundColor: Colors.grey.shade200,
                progressColor: kPrimary,
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    LineIcons.edit,
                    color: kPrimary,
                    size: 30,
                  )),
              title: Text("To buy a car"),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5),
                  Text("20000MMK", style: TextStyle(color: kPrimary)),
                  SizedBox(
                    height: 10,
                  ),
                  Text("from 22 Dec 2021 to 23 Feb 2022",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w300)),
                ],
              )),
          ListTile(
              leading: CircularPercentIndicator(
                radius: 50.0,
                animation: true,
                animationDuration: 1200,
                lineWidth: 15.0,
                percent: 0.5,
                backgroundColor: Colors.grey.shade200,
                progressColor: kPrimary,
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    LineIcons.edit,
                    color: kPrimary,
                    size: 30,
                  )),
              title: Text("To buy a car"),
              subtitle: Text("20000MMK", style: TextStyle(color: kPrimary)))
          // SizedBox(
          //   height: 25,
          // ),
          // Icon(
          //   Icons.add_circle_outline_rounded,
          //   size: 80,
          //   color: kPrimary,
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          // Text(
          //   "Add New Goal",
          //   style: TextStyle(fontSize: 20, color: kPrimary),
          // )
        ],
      ),
    );
  }
}
