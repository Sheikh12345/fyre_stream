import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fyre_stream/helper_functions/navigation_function.dart';
import 'package:google_fonts/google_fonts.dart';

class Filters2 extends StatefulWidget {
  const Filters2({Key? key}) : super(key: key);

  @override
  _Filters2State createState() => _Filters2State();
}

class _Filters2State extends State<Filters2> {

  double start =0.0, end = 10;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(child: Scaffold(
      body: Column(
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
                  onTap: () {
                    screenPush(context, const Filters2());
                  },
                  child: SizedBox(
                    width: size.width * 0.08,
                    height: size.width * 0.08,
                    child: SvgPicture.asset(
                      'assets/icons/mutual_search.svg',
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
                Text('Price range',style: GoogleFonts.rubik(
                  color: Colors.black,
                  fontSize: size.width*0.04,
                  fontWeight: FontWeight.w400
                ),),
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
                Text('Amenties',style: GoogleFonts.rubik(
                    color: Colors.black,
                    fontSize: size.width*0.04,
                    fontWeight: FontWeight.w400
                ),),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
