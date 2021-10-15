import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fyre_stream/styles/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class ShareMoment extends StatefulWidget {
  const ShareMoment({Key? key}) : super(key: key);

  @override
  _ShareMomentState createState() => _ShareMomentState();
}

class _ShareMomentState extends State<ShareMoment> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
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
                          "Share",
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
                      child: SvgPicture.asset(
                          'assets/icons/moment/settings_road.svg'),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: size.width,
                      child: const TextField(
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "moment",
                      style: GoogleFonts.rubik(
                          color: Colors.grey.shade600,
                          fontSize: size.width * 0.042,
                          fontWeight: FontWeight.w600),
                    ),
                    Container(
                      height: size.height * 0.8,
                      width: size.width,
                      child: ListView.builder(
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return Container(
                              height: size.height * 0.12,
                              width: size.width,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                        horizontal: 30, vertical: 5),
                                    child: Text(
                                      'Share',
                                      style: GoogleFonts.rubik(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                        border: Border.all(
                                          color: Color(0xffFF6961),
                                        ),
                                        gradient: linearGradientTopToBottom),
                                  )
                                ],
                              ),
                            );
                          }),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Messanger",
                      style: GoogleFonts.rubik(
                          color: Colors.grey.shade600,
                          fontSize: size.width * 0.042,
                          fontWeight: FontWeight.w600),
                    ),
                    Container(
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                        horizontal: 30, vertical: 5),
                                    child: Text(
                                      'Share',
                                      style: GoogleFonts.rubik(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                        border: Border.all(
                                          color: Color(0xffFF6961),
                                        ),
                                        gradient: linearGradientTopToBottom),
                                  )
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
