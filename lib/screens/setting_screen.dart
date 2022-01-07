import 'package:expense_tracker_seiko/helpers/colors/color.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ဆက်တင်"),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListTile(
            leading: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: kPrimary, borderRadius: BorderRadius.circular(10)),
              child: Icon(
                LineIcons.language,
                color: Colors.white,
                size: 26,
              ),
            ),
            title: Text("Change Language"),
            trailing: Text("en"),
          ),
          ListTile(
            leading: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: kPrimary, borderRadius: BorderRadius.circular(10)),
              child: Icon(
                LineIcons.trash,
                color: Colors.white,
                size: 26,
              ),
            ),
            title: Text("Delete All Data"),
            trailing: Text("en"),
          ),
          ListTile(
            leading: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: kPrimary, borderRadius: BorderRadius.circular(10)),
              child: Icon(
                LineIcons.bell,
                color: Colors.white,
                size: 26,
              ),
            ),
            title: Text("Smart Reminder"),
            trailing: Text("8;00 PM"),
          ),
          ListTile(
            leading: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: kPrimary, borderRadius: BorderRadius.circular(10)),
              child: Icon(
                LineIcons.share,
                color: Colors.white,
                size: 26,
              ),
            ),
            title: Text("Share"),
          ),
          ListTile(
            leading: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: kPrimary, borderRadius: BorderRadius.circular(10)),
              child: Icon(
                LineIcons.inbox,
                color: Colors.white,
                size: 26,
              ),
            ),
            title: Text("Contact us"),
          ),
          ListTile(
            leading: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: kPrimary, borderRadius: BorderRadius.circular(10)),
              child: Icon(
                LineIcons.infoCircle,
                color: Colors.white,
                size: 26,
              ),
            ),
            title: Text("About"),
          ),
        ],
      ),
    );
  }
}
