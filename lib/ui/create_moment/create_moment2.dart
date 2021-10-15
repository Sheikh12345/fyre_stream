import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateMoment2 extends StatefulWidget {
  const CreateMoment2({Key? key}) : super(key: key);

  @override
  _CreateMoment2State createState() => _CreateMoment2State();
}

class _CreateMoment2State extends State<CreateMoment2> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xffb5b4b4),
      body: Container(
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20, left: 20),
                  width: size.width * 0.07,
                  height: size.width * 0.07,
                  child: SvgPicture.asset(
                    'assets/icons/cross_icon.svg',
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.03,
                      vertical: size.width * 0.02),
                  margin: EdgeInsets.only(top: 20, right: 20),
                  child: Text(
                    'Share',
                    style: GoogleFonts.rubik(
                        color: Colors.black,
                        fontSize: size.width * 0.034,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: size.height * 0.09,
        width: size.width,
        color: Color(0xffff8983),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height:  size.width * 0.08,
              width: size.width * 0.08,
              child: SvgPicture.asset('assets/icons/moment/smily_icon.svg',fit: BoxFit.fill,),
            ),
            Container(
              height:  size.width * 0.08,
              width: size.width * 0.08,
              child: SvgPicture.asset('assets/icons/moment/brush.svg',fit: BoxFit.fill,),
            ),
            Container(
              height:  size.width * 0.08,
              width: size.width * 0.08,
              child: SvgPicture.asset('assets/icons/moment/smily_icon.svg'),
            ), Container(
              height:  size.width * 0.08,
              width: size.width * 0.08,
              child: SvgPicture.asset('assets/icons/moment/color_filter.svg'),
            ),
            Container(
              height:  size.width * 0.08,
              width: size.width * 0.08,
              child: SvgPicture.asset('assets/icons/moment/text_icon.svg'),
            ),
          ],
        ),
      ),
    ));
  }
}
