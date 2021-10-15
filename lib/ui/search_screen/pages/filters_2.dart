import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fyre_stream/ui/search_screen/components/filter_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart' as cuper;

class Filters2 extends StatefulWidget {
  const Filters2({Key? key}) : super(key: key);

  @override
  _Filters2State createState() => _Filters2State();
}

class _Filters2State extends State<Filters2> {
  double start = 0.0, end = 10;
  bool isWifi = false;
  bool isHeating = false;
  bool isKitchen = false;
  bool isShampoo = false;
  bool isAlarm = false;

  bool switch1 = false;
  bool switch2 = false;
  bool switch3 = false;

  int beds = 0;
  int bedrooms = 0;
  int bathrooms = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Color(0xff0C3C5C),
                        ),
                      ),
                      Text(
                        "Filters",
                        style: GoogleFonts.rubik(
                          color: Color(0xff0C3C5C),
                          fontWeight: FontWeight.w600,
                          fontSize: size.width * 0.055,
                          letterSpacing: 1,
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {},
                    child: SizedBox(
                        width: size.width * 0.08,
                        height: size.width * 0.08,
                        child: const Icon(
                          Icons.check,
                          color: Color(0xffFF6961),
                        )),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Price range',
                    style: GoogleFonts.rubik(
                        color: Colors.black,
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Color(0xffFF6961),
                      inactiveTrackColor: Color(0xffCDCDCD),
                      trackHeight: 8.0,
                      thumbColor: Color(0xffFF6961),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: size.width),
                      overlayColor: Colors.purple.withAlpha(32),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 14.0),
                    ),
                    child: RangeSlider(
                      min: 0,
                      max: 25,
                      onChanged: (value) {
                        setState(() {
                          start = value.start;
                          end = value.end;
                        });
                      },
                      values: RangeValues(start, end),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Text(
                    'Amenties',
                    style: GoogleFonts.rubik(
                        color: Colors.black,
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.8),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomButton(
                        onTap: () {
                          setState(() {
                            isWifi = !isWifi;
                          });
                        },
                        text: 'Wifi',
                        bgColor: isWifi ? Color(0xffFF6961) : Colors.white,
                        textClr: isWifi ? Colors.white : Colors.grey,
                      ),
                      CustomButton(
                        onTap: () {
                          setState(() {
                            isHeating = !isHeating;
                          });
                        },
                        text: 'Heating',
                        bgColor: isHeating ? Color(0xffFF6961) : Colors.white,
                        textClr: isHeating ? Colors.white : Colors.grey,
                      ),
                      CustomButton(
                        onTap: () {
                          setState(() {
                            isKitchen = !isKitchen;
                          });
                        },
                        text: 'Kitchen',
                        bgColor: isKitchen ? Color(0xffFF6961) : Colors.white,
                        textClr: isKitchen ? Colors.white : Colors.grey,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.014,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomButton(
                        onTap: () {
                          setState(() {
                            isShampoo = !isShampoo;
                          });
                        },
                        text: 'Shampoo',
                        bgColor: isShampoo ? Color(0xffFF6961) : Colors.white,
                        textClr: isShampoo ? Colors.white : Colors.grey,
                      ),
                      CustomButton(
                        onTap: () {
                          setState(() {
                            isAlarm = !isAlarm;
                          });
                        },
                        text: 'Alarm',
                        bgColor: isAlarm ? Color(0xffFF6961) : Colors.white,
                        textClr: isAlarm ? Colors.white : Colors.grey,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: size.width * 0.27,
                        height: size.height * 0.057,
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Text(
                    'Features',
                    style: GoogleFonts.rubik(
                        color: Colors.black,
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.8),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Text(
                    'Instant Book',
                    style: GoogleFonts.rubik(
                        color: Colors.black,
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.8),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Book without waiting for the host to respond',
                        style: GoogleFonts.rubik(
                            color: Colors.grey.shade700,
                            fontSize: size.width * 0.03,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.8),
                      ),
                      Transform.scale(
                        scale: 0.6,
                        child: cuper.CupertinoSwitch(
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
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Text(
                    'Verified Host',
                    style: GoogleFonts.rubik(
                        color: Colors.black,
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.8),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Host are verified when they complete at least\n30 orders',
                        style: GoogleFonts.rubik(
                            color: Colors.grey.shade700,
                            fontSize: size.width * 0.03,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.8),
                      ),
                      Transform.scale(
                        scale: 0.6,
                        child: cuper.CupertinoSwitch(
                          activeColor: Color(0xffFF6961),
                          value: switch2,
                          onChanged: (value) {
                            setState(() {
                              switch2 = value;
                            });
                          },
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Text(
                    'Private Room',
                    style: GoogleFonts.rubik(
                        color: Colors.black,
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.8),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Have your own room and share some common\nspace',
                        style: GoogleFonts.rubik(
                            color: Colors.grey.shade700,
                            fontSize: size.width * 0.03,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.8),
                      ),
                      Transform.scale(
                        scale: 0.6,
                        child: cuper.CupertinoSwitch(
                          activeColor: Color(0xffFF6961),
                          value: switch3,
                          onChanged: (value) {
                            setState(() {
                              switch3 = value;
                            });
                          },
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Text(
                    'Rooms and beds',
                    style: GoogleFonts.rubik(
                        color: Colors.black,
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Bed',
                        style: GoogleFonts.rubik(
                            color: Colors.grey.shade700,
                            fontSize: size.width * 0.038,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.8),
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              if (beds != 0) {
                                setState(() {
                                  beds = beds - 1;
                                });
                              }
                            },
                            child: Container(
                              child: Icon(
                                Icons.remove,
                                size: size.width * 0.03,
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  shape: BoxShape.circle),
                              padding: EdgeInsets.all(8),
                              margin: EdgeInsets.symmetric(horizontal: 4),
                            ),
                          ),
                          Text('$beds'),
                          InkWell(
                            onTap: () {
                              setState(() {
                                beds = beds + 1;
                              });
                            },
                            child: Container(
                              child: Icon(
                                Icons.add,
                                size: size.width * 0.03,
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  shape: BoxShape.circle),
                              padding: EdgeInsets.all(8),
                              margin: const EdgeInsets.symmetric(horizontal: 4),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Bedrooms',
                        style: GoogleFonts.rubik(
                            color: Colors.grey.shade700,
                            fontSize: size.width * 0.038,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.8),
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              if (bedrooms != 0) {
                                setState(() {
                                  bedrooms = bedrooms - 1;
                                });
                              }
                            },
                            child: Container(
                              child: Icon(
                                Icons.remove,
                                size: size.width * 0.03,
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  shape: BoxShape.circle),
                              padding: EdgeInsets.all(8),
                              margin: EdgeInsets.symmetric(horizontal: 4),
                            ),
                          ),
                          Text('$bedrooms'),
                          InkWell(
                            onTap: () {
                              setState(() {
                                bedrooms = bedrooms + 1;
                              });
                            },
                            child: Container(
                              child: Icon(
                                Icons.add,
                                size: size.width * 0.03,
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  shape: BoxShape.circle),
                              padding: EdgeInsets.all(8),
                              margin: const EdgeInsets.symmetric(horizontal: 4),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Bathrooms',
                        style: GoogleFonts.rubik(
                            color: Colors.grey.shade700,
                            fontSize: size.width * 0.038,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.8),
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              if (bathrooms != 0) {
                                setState(() {
                                  bathrooms = bathrooms - 1;
                                });
                              }
                            },
                            child: Container(
                              child: Icon(
                                Icons.remove,
                                size: size.width * 0.03,
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  shape: BoxShape.circle),
                              padding: EdgeInsets.all(8),
                              margin: EdgeInsets.symmetric(horizontal: 4),
                            ),
                          ),
                          Text('$bathrooms'),
                          InkWell(
                            onTap: () {
                              setState(() {
                                bathrooms = bathrooms + 1;
                              });
                            },
                            child: Container(
                              child: Icon(
                                Icons.add,
                                size: size.width * 0.03,
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  shape: BoxShape.circle),
                              padding: EdgeInsets.all(8),
                              margin: const EdgeInsets.symmetric(horizontal: 4),
                            ),
                          ),
                        ],
                      )
                    ],
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
