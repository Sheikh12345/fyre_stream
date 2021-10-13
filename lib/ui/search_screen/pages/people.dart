import 'package:flutter/material.dart';
import 'package:fyre_stream/styles/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class People extends StatefulWidget {
  const People({Key? key}) : super(key: key);

  @override
  _PeopleState createState() => _PeopleState();
}

class _PeopleState extends State<People> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Expanded(
      child: Container(
        width: size.width,
        margin: EdgeInsets.symmetric(horizontal: 15),
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
                    index == 0
                        ? Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16, vertical: 5),
                      child: Text(
                        'Connect',
                        style: GoogleFonts.rubik(
                          color: Color(0xffFF6961),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(7),
                        border: Border.all(
                          color: Color(0xffFF6961),
                        ),
                      ),
                    )
                        : Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Text(
                        'Requested',
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
      ),
    );
  }
}
