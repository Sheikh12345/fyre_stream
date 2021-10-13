import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fyre_stream/helper_functions/navigation_function.dart';
import 'package:google_fonts/google_fonts.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({Key? key}) : super(key: key);

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  double start =0.0, end = 20.0;

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
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                    onTap: () {
                      screenPush(context, FiltersScreen());
                    },
                    child: SizedBox(
                      width: size.width * 0.05,
                      height: size.width * 0.05,
                      child: SvgPicture.asset(
                        'assets/icons/menu_road.svg',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Interested Sex',
                    style: GoogleFonts.rubik(
                        color: Color(0xff0C3C5C),
                        fontSize: size.width * 0.05,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/male_icon.svg',
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Male',
                            style: GoogleFonts.rubik(
                              color: Colors.grey.shade600,
                              fontSize: size.width * 0.045,
                            ),
                          )
                        ],
                      ),
                      Switch(
                        onChanged: (value) {},
                        value: true,
                        activeColor: const Color(0xffFF6961),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/female_icon.svg',
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Female',
                            style: GoogleFonts.rubik(
                              color: Colors.grey.shade600,
                              fontSize: size.width * 0.045,
                            ),
                          )
                        ],
                      ),
                      Switch(
                        onChanged: (value) {},
                        value: true,
                        activeColor: const Color(0xffFF6961),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/other_icon.svg',
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Other',
                            style: GoogleFonts.rubik(
                              color: Colors.grey.shade600,
                              fontSize: size.width * 0.045,
                            ),
                          )
                        ],
                      ),
                      Switch(
                        onChanged: (value) {},
                        value: true,
                        activeColor: const Color(0xffFF6961),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/not_looking.svg',
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Not Looking',
                            style: GoogleFonts.rubik(
                              color: Colors.grey.shade600,
                              fontSize: size.width * 0.045,
                            ),
                          )
                        ],
                      ),
                      Switch(
                        onChanged: (value) {},
                        value: true,
                        activeColor: const Color(0xffFF6961),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding:  const EdgeInsets.only(left: 10,bottom: 6),
                    child: Text('Age Range',style: GoogleFonts.rubik(
                      color: const Color(0xff0C3C5C),
                     fontSize:size.width*0.04,
                      fontWeight: FontWeight.w500
                    ),),
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Color(0xffFF6961),
                      inactiveTrackColor: Color(0xffCDCDCD),
                      trackHeight: 8.0,
                      thumbColor: Color(0xffFF6961),
                      thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: size.width),
                      overlayColor: Colors.purple.withAlpha(32),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 14.0),
                    ),
                    child: RangeSlider(
                        min: 0,
                        max: 25,

                        onChanged: (value) {
                          setState(() {
                            start = value.start;
                            end = value.end;
                          });
                        }, values:RangeValues(
                        start,end
                    ),

                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding:  const EdgeInsets.only(left: 10,bottom: 6),
                    child: Text('Distance Range',style: GoogleFonts.rubik(
                        color: const Color(0xff0C3C5C),
                        fontSize:size.width*0.04,
                        fontWeight: FontWeight.w500
                    ),),
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Color(0xffFF6961),
                      inactiveTrackColor: Color(0xffCDCDCD),
                      trackHeight: 8.0,
                      thumbColor: Color(0xffFF6961),
                      thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: size.width),
                      overlayColor: Colors.purple.withAlpha(32),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 14.0),
                    ),
                    child: RangeSlider(
                      min: 0,
                      max: 25,

                      onChanged: (value) {
                        setState(() {
                          start = value.start;
                          end = value.end;
                        });
                      }, values:RangeValues(
                        start,end
                    ),

                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    padding: const EdgeInsets.only(left: 15),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Hispanic',
                        hintStyle: GoogleFonts.rubik(
                            color: Colors.grey.shade600,
                            fontSize: size.width * 0.045),
                        border: InputBorder.none,
                      ),
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400, width: 1),
                        borderRadius: BorderRadius.circular(7)),
                  ),

                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    padding: const EdgeInsets.only(left: 15),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Religion',
                        hintStyle: GoogleFonts.rubik(
                            color: Colors.grey.shade600,
                            fontSize: size.width * 0.045),
                        border: InputBorder.none,
                      ),
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400, width: 1),
                        borderRadius: BorderRadius.circular(7)),
                  ),

                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    padding: const EdgeInsets.only(left: 15),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Country',
                        hintStyle: GoogleFonts.rubik(
                            color: Colors.grey.shade600,
                            fontSize: size.width * 0.045),
                        border: InputBorder.none,
                      ),
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400, width: 1),
                        borderRadius: BorderRadius.circular(7)),
                  ),

                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    padding: const EdgeInsets.only(left: 15),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'City',
                        hintStyle: GoogleFonts.rubik(
                            color: Colors.grey.shade600,
                            fontSize: size.width * 0.045),
                        border: InputBorder.none,
                      ),
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400, width: 1),
                        borderRadius: BorderRadius.circular(7)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
