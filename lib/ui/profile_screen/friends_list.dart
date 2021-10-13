import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fyre_stream/styles/colors.dart';
import 'package:fyre_stream/ui/authentication/components/auth_button.dart';
import 'package:fyre_stream/ui/compass_screen/components/tab_bar_tile.dart';
import 'package:google_fonts/google_fonts.dart';

class FriendsList extends StatefulWidget {
  const FriendsList({Key? key}) : super(key: key);

  @override
  _FriendsListState createState() => _FriendsListState();
}

class _FriendsListState extends State<FriendsList> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Container(
      height: size.height * 0.8,
      width: size.width,
      child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return Container(
              height: size.height * 0.12,
              width: size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: size.width * 0.12,
                        height: size.width * 0.12,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/girl_image.png'))),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: size.height * 0.03,
                          ),
                          Text(
                            'Alexandra_123',
                            style: GoogleFonts.rubik(
                                color: Color(0xff0C3C5C),
                                fontWeight: FontWeight.w600,
                                fontSize: size.width * 0.045),
                          ),
                          Text(
                            'Alexa',
                            style: GoogleFonts.rubik(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                                fontSize: size.width * 0.042),
                          )
                        ],
                      )
                    ],
                  ),
                Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 10, vertical: 5),
                    child: Text(
                      'Message',
                      style: GoogleFonts.rubik(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(7),
                        border: Border.all(
                          color: Color(0xffFF6961),
                        ),
                        gradient:
                        linearGradientTopToBottom),
                  )
                ],
              ),
            );
          }),
    );
  }
}
