import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fyre_stream/styles/colors.dart';
import 'package:fyre_stream/ui/authentication/components/auth_button.dart';
import 'package:fyre_stream/ui/compass_screen/components/tab_bar_tile.dart';
import 'package:google_fonts/google_fonts.dart';

import 'find_friends.dart';
import 'friends_list.dart';

class Friends extends StatefulWidget {
  const Friends({Key? key}) : super(key: key);

  @override
  _FriendsState createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
          body: Container(
            width: size.width,
            height: size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                InkWell(
                                  onTap:(){
                                    Navigator.pop(context);
                                  },
                                  child: const Icon(
                                    Icons.arrow_back_ios,
                                    color: Color(0xff0C3C5C),
                                  ),
                                ),
                                Text(
                                  "Friends",
                                  style: GoogleFonts.rubik(
                                    color: Color(0xff0C3C5C),
                                    fontWeight: FontWeight.w600,
                                    fontSize: size.width * 0.055,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: size.width * 0.05,
                              height: size.width * 0.05,
                              child: SvgPicture.asset(
                                'assets/icons/search_icon2.svg',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Row(
                        children: [
                          MomentTile(
                            onTap: () {
                              setState(() {
                                index = 0;
                              });
                            },
                            text: 'Find People',
                            textColor: index == 0 ? Colors.white : Colors.grey,
                            backColor:
                            index == 0 ? Color(0xffFF6961) : Colors.white,
                          ),
                          MomentTile(
                            onTap: () {
                              setState(() {
                                index = 1;
                              });
                            },
                            text: 'Friends',
                            textColor: index == 1 ? Colors.white : Colors.grey,
                            backColor:
                            index == 1 ? Color(0xffFF6961) : Colors.white,
                          ),
                        ],
                      ),
                    if(index==0)
                      const FindFriends(),
                      if(index==1)
                        const FriendsList()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
