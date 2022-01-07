import 'package:expense_tracker_seiko/helpers/colors/color.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class AddExpenseScreen extends StatelessWidget {
  const AddExpenseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        color: kPrimary,
        padding: const EdgeInsets.only(top: 50.0, left: 24.0, right: 24.0),
        height: 150.0,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            const Text(
              'Add Expense',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.close_rounded,
                size: 30.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Text(
          "Amount",
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),
        ),
      ),
      SizedBox(
        height: 30,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: TextField(
          onChanged: (value) {},
          cursorColor: kPrimary,
          style: const TextStyle(
            color: kPrimary,
            fontWeight: FontWeight.bold,
            fontSize: 28.0,
          ),
          decoration: InputDecoration(
            hintText: 'Enter',
            suffixIcon: Icon(
              LineIcons.handHoldingUsDollar,
              size: 35,
              color: kPrimary,
            ),
            hintStyle: TextStyle(
              color: kPrimary.withOpacity(0.5),
              fontWeight: FontWeight.bold,
              fontSize: 28.0,
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: kPrimary,
              ),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: kPrimary,
              ),
            ),
          ),
        ),
      ),
      SizedBox(height: 30),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          children: [
            Text(
              "22/06/2021",
              style: TextStyle(
                  color: kPrimary, fontSize: 18, fontWeight: FontWeight.w600),
            ),
            Spacer(),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  LineIcons.calendar,
                  color: kPrimary,
                  size: 32,
                ))
          ],
        ),
      ),
      SizedBox(height: 30),
      // Text(
      //   "Choose Category",
      //   style: TextStyle(
      //       color: Colors.black,
      //       fontSize: 18,
      //       fontWeight: FontWeight.w700),
      // ),
      SizedBox(height: 30),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Note",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextField(
              onChanged: (value) {},
              keyboardType: TextInputType.multiline,
              maxLines: null,
              minLines: 8,
              decoration: const InputDecoration(
                hintText: 'Enter here...',
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  borderSide: BorderSide(
                    color: Colors.black12,
                  ),
                ),
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  borderSide: BorderSide(
                    color: Colors.black12,
                  ),
                ),
                hintStyle: TextStyle(
                  color: Colors.black26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  primary: kPrimary,
                  minimumSize: Size(MediaQuery.of(context).size.width, 50),
                ),
                child: const Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    ])));
  }
}
