import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationSettings extends StatefulWidget {
  const NotificationSettings({Key? key}) : super(key: key);

  @override
  _NotificationSettingsState createState() => _NotificationSettingsState();
}

class _NotificationSettingsState extends State<NotificationSettings> {
  bool switch1 = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40,
            margin: EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                    Text(
                      "Notifications Settings",
                      style: GoogleFonts.rubik(
                        color: Color(0xff0C3C5C),
                        fontWeight: FontWeight.w600,
                        fontSize: size.width * 0.055,
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'General Notifications',
                  style: GoogleFonts.rubik(
                    color: Color(0xff0C3C5C),
                    fontWeight: FontWeight.w600,
                    fontSize: size.width * 0.04,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Pause All',
                      style: GoogleFonts.rubik(
                          color: Colors.grey.shade500,
                          fontSize: size.width * 0.035,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.8),
                    ),
                    Transform.scale(
                      scale: 0.7,
                      child: CupertinoSwitch(
                        activeColor: Color(0xffFF6961),
                        value: switch1,
                        onChanged: (value) {
                          setState(() {
                            switch1 = value;
                          });
                        },
                      ),
                    )
                  ],
                ),
                Text(
                  'Post, Moments and Comments',
                  style: GoogleFonts.rubik(
                      color: Colors.grey.shade500,
                      fontSize: size.width * 0.037,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.8),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Matches',
                      style: GoogleFonts.rubik(
                          color: Colors.grey.shade500,
                          fontSize: size.width * 0.035,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.8),
                    ),
                    Transform.scale(
                      scale: 0.7,
                      child: CupertinoSwitch(
                        activeColor: Color(0xffFF6961),
                        value: switch1,
                        onChanged: (value) {
                          setState(() {
                            switch1 = value;
                          });
                        },
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Friends Request',
                      style: GoogleFonts.rubik(
                          color: Colors.grey.shade500,
                          fontSize: size.width * 0.035,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.8),
                    ),
                    Transform.scale(
                      scale: 0.7,
                      child: CupertinoSwitch(
                        activeColor: Color(0xffFF6961),
                        value: switch1,
                        onChanged: (value) {
                          setState(() {
                            switch1 = value;
                          });
                        },
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Direct Message',
                      style: GoogleFonts.rubik(
                          color: Colors.grey.shade500,
                          fontSize: size.width * 0.035,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.8),
                    ),
                    Transform.scale(
                      scale: 0.7,
                      child: CupertinoSwitch(
                        activeColor: Color(0xffFF6961),
                        value: switch1,
                        onChanged: (value) {
                          setState(() {
                            switch1 = value;
                          });
                        },
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Live Moment',
                      style: GoogleFonts.rubik(
                          color: Colors.grey.shade500,
                          fontSize: size.width * 0.035,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.8),
                    ),
                    Transform.scale(
                      scale: 0.7,
                      child: CupertinoSwitch(
                        activeColor: Color(0xffFF6961),
                        value: switch1,
                        onChanged: (value) {
                          setState(() {
                            switch1 = value;
                          });
                        },
                      ),
                    )
                  ],
                ),
                Text(
                  'From Fyrestream',
                  style: GoogleFonts.rubik(
                      color: Colors.grey.shade500,
                      fontSize: size.width * 0.035,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.8),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Text(
                  'Others Notifications',
                  style: GoogleFonts.rubik(
                      color: Color(0xff0C3C5C),
                      fontSize: size.width * 0.035,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.8),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Text(
                  'Email and SMS',
                  style: GoogleFonts.rubik(
                      color: Colors.grey.shade600,
                      fontSize: size.width * 0.035,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.8),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
