import 'package:expense_tracker_seiko/helpers/colors/color.dart';
import 'package:expense_tracker_seiko/widgets/pie_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:line_icons/line_icons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "ငွေစာရင်း",
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                LineIcons.bell,
                size: 32,
                color: Colors.black,
              ),
            )
          ]),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Total Balance",
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.w800, color: kPrimary),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            " 400000000000000000000000000000000000000000000 ",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: kPrimary,
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      "MMK",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "OverView",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: kPrimary),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        LineIcons.lineChart,
                      ))
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 3),
                          height: 150,
                          width: 200,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.6),
                                  spreadRadius: -4,
                                  blurRadius: 8,
                                  offset: Offset(0, 3), //
                                ),
                              ],
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                LineIcons.handHoldingUsDollar,
                                color: Colors.black,
                                size: 25,
                              ),
                              FittedBox(
                                fit: BoxFit.cover,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text(
                                    "100000000000000 \n ကျပ်",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ),
                              Text(
                                "Income",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 3),
                          height: 150,
                          width: 200,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.6),
                                  spreadRadius: -4,
                                  blurRadius: 8,
                                  offset: Offset(0, 3), //
                                ),
                              ],
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                LineIcons.moneyCheck,
                                color: Colors.black,
                                size: 25,
                              ),
                              FittedBox(
                                fit: BoxFit.cover,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text(
                                    "100000000000000 \n ကျပ်",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ),
                              Text(
                                "Expenses",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      height: 310,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.6),
                              spreadRadius: -4,
                              blurRadius: 8,
                              offset: Offset(0, 3), //
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15)),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        color: kPrimary,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Icon(
                                      LineIcons.car,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                  ),
                                  Expanded(
                                      child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                        "To buy a carhhhhhhhhhhhhhhhhhhhhhhhhhhhh"),
                                  ))
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        color: kPrimary,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Icon(
                                      LineIcons.car,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                  ),
                                  Expanded(
                                      child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                        "To buy a carhhhhhhhhhhhhhhhhhhhhhhhhhhhh"),
                                  ))
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        color: kPrimary,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Icon(
                                      LineIcons.car,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                  ),
                                  Expanded(
                                      child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                        "To buy a carhhhhhhhhhhhhhhhhhhhhhhhhhhhh"),
                                  ))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // BarChartSample1(),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: kPrimary),
                  ),
                  Spacer(),
                  PopupMenuButton(
                      icon: Icon(LineIcons.filter),
                      itemBuilder: (BuildContext context) => [
                            PopupMenuItem(child: Text("Income")),
                            PopupMenuItem(child: Text("Expenses")),
                          ]),
                  IconButton(onPressed: () {}, icon: Icon(LineIcons.editAlt))
                ],
              ),

              // Row(
              //   children: [
              //     Column(
              //       children: [
              //         Text(
              //           "ဝင်ငွေ",
              //           style: TextStyle(
              //               color: Colors.black,
              //               fontSize: 13,
              //               fontWeight: FontWeight.w500),
              //         ),
              //         Container(
              //           height: 4,
              //           width: 4,
              //           decoration: BoxDecoration(
              //               color: kPrimary, shape: BoxShape.circle),
              //         )
              //       ],
              //     ),
              //     SizedBox(width: 10),
              //     Column(
              //       children: [
              //         Text(
              //           "ထွက်ငွေ",
              //           style: TextStyle(
              //               color: Colors.black,
              //               fontSize: 13,
              //               fontWeight: FontWeight.w500),
              //         ),
              //         Container(
              //           height: 4,
              //           width: 4,
              //           decoration: BoxDecoration(
              //               color: kPrimary, shape: BoxShape.circle),
              //         )
              //       ],
              //     ),
              //   ],
              // ),
              SizedBox(
                height: 25,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildCategory(),
                    buildCategory(),
                    buildCategory(),
                    buildCategory(),
                    buildCategory(),
                    buildCategory(),
                    buildCategory(),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Last Expenses",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: kPrimary),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "See all",
                        style: TextStyle(color: Colors.black),
                      ))
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Slidable(
                key: const ValueKey(0),

                // The start action pane is the one at the left or the top side.
                startActionPane: ActionPane(
                  // A motion is a widget used to control how the pane animates.
                  motion: const ScrollMotion(),

                  // A pane can dismiss the Slidable.
                  dismissible: DismissiblePane(onDismissed: () {}),

                  // All actions are defined in the children parameter.
                  children: [
                    // A SlidableAction can have an icon and/or a label.
                    SlidableAction(
                      onPressed: (context) {},
                      backgroundColor: Color(0xFFFE4A49),
                      foregroundColor: Colors.white,
                      icon: LineIcons.trash,
                      label: 'Delete',
                    ),
                  ],
                ),

                // The end action pane is the one at the right or the bottom side.
                endActionPane: ActionPane(
                  motion: ScrollMotion(),
                  children: [
                    SlidableAction(
                      onPressed: (context) {},
                      backgroundColor: Color(0xFF0392CF),
                      foregroundColor: Colors.white,
                      icon: LineIcons.edit,
                      label: 'Edit',
                    ),
                  ],
                ),
                child: ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: kPrimary,
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      LineIcons.pizzaSlice,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  title: Text("မုန့်ဝယ်စား"),
                  subtitle: Text("27 March 2021"),
                  trailing: Text("200000ကျပ်"),
                ),
              ),
              Slidable(
                key: const ValueKey(1),

                // The start action pane is the one at the left or the top side.
                startActionPane: ActionPane(
                  // A motion is a widget used to control how the pane animates.
                  motion: const ScrollMotion(),

                  // A pane can dismiss the Slidable.
                  dismissible: DismissiblePane(onDismissed: () {}),

                  // All actions are defined in the children parameter.
                  children: [
                    // A SlidableAction can have an icon and/or a label.
                    SlidableAction(
                      onPressed: (context) {},
                      backgroundColor: Color(0xFFFE4A49),
                      foregroundColor: Colors.white,
                      icon: LineIcons.trash,
                      label: 'Delete',
                    ),
                  ],
                ),

                // The end action pane is the one at the right or the bottom side.
                endActionPane: ActionPane(
                  motion: ScrollMotion(),
                  children: [
                    SlidableAction(
                      onPressed: (context) {},
                      backgroundColor: Color(0xFF0392CF),
                      foregroundColor: Colors.white,
                      icon: LineIcons.edit,
                      label: 'Edit',
                    ),
                  ],
                ),
                child: ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: kPrimary,
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      LineIcons.pizzaSlice,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  title: Text("မုန့်ဝယ်စား"),
                  subtitle: Text("27 March 2021"),
                  trailing: Text("200000ကျပ်"),
                ),
              ),
              ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: kPrimary, borderRadius: BorderRadius.circular(10)),
                  child: Icon(
                    LineIcons.car,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                title: Text("ကားဝယ်လိုက်တယ်"),
                subtitle: Text("27 March 2021"),
                trailing: Text("200000ကျပ်"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildCategory() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          color: kPrimary, borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            LineIcons.fruitApple,
            color: Colors.white,
            size: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text("ကျောင်းစရိတ်",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    overflow: TextOverflow.ellipsis)),
          )
        ],
      ),
    );
  }
}
