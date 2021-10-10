import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fyre_stream/helper_functions/navigation_function.dart';
import 'package:fyre_stream/styles/colors.dart';
import 'package:fyre_stream/styles/strings.dart';
import 'package:fyre_stream/ui/authentication/login_screen.dart';
import 'package:fyre_stream/ui/authentication/sign_up_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class WalkThroughScreen extends StatefulWidget {
  const WalkThroughScreen({Key? key}) : super(key: key);

  @override
  _WalkThroughScreenState createState() => _WalkThroughScreenState();
}

class _WalkThroughScreenState extends State<WalkThroughScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: size.width,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: size.height * 0.12, bottom: size.height * 0.04),
                child:
                    SvgPicture.asset(walkThroughImages.elementAt(currentIndex)),
              ),
              Text(
                walkThroughHeadingString.elementAt(currentIndex),
                style: GoogleFonts.rubik(
                  color: Colors.black,
                  fontSize: size.width * 0.06,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                walkThroughDetailStrings.elementAt(currentIndex),
                style: GoogleFonts.rubik(
                    color: Colors.grey.shade600, fontSize: size.width * 0.04),
                textAlign: TextAlign.center,
              ),
              Container(
                margin: EdgeInsets.only(top: size.height * 0.05),
                width: size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 13,
                      height: 13,
                      decoration: BoxDecoration(
                          color: currentIndex == 0
                              ? primaryColor
                              : const Color(0xfffcb1ad),
                          shape: BoxShape.circle),
                    ),
                    Container(
                      width: 13,
                      height: 13,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          color: currentIndex == 1
                              ? primaryColor
                              : const Color(0xfffcb1ad),
                          shape: BoxShape.circle),
                    ),
                    Container(
                      width: 13,
                      height: 13,
                      decoration: BoxDecoration(
                          color: currentIndex == 2
                              ? primaryColor
                              : const Color(0xfffcb1ad),
                          shape: BoxShape.circle),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                screenPushRep(context, const SignUpScreen());
              },
              child: Container(
                padding: EdgeInsets.only(
                  left: size.width * 0.08,
                ),
                child: Text(
                  'Skip',
                  style: GoogleFonts.rubik(
                      color: primaryColor,
                      fontWeight: FontWeight.w500,
                      fontSize: size.width * 0.041),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                if (currentIndex != 2) {
                  setState(() {
                    currentIndex = currentIndex + 1;
                  });
                } else {
                  screenPushRep(context, const LoginScreen());
                }
              },
              child: Container(
                alignment: Alignment.center,
                width: size.width * 0.33,
                height: size.height * 0.07,
                child: Text(
                  'Next',
                  style: GoogleFonts.rubik(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: size.width * 0.044),
                ),
                decoration: const BoxDecoration(
                    gradient: linearGradientTopToBottom,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(30))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
