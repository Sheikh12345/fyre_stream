import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fyre_stream/helper_functions/navigation_function.dart';
import 'package:fyre_stream/ui/walk_through_screen/walk_through_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  int loadingValue = 0;
  AnimationController? _animCtrl;
  late Animation<Color?> animation;
  double value = 1.0;
  Timer? _timer;
  bool _status = true;

  @override
  void initState() {
    _status = true;
    super.initState();
    _animCtrl =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    animation = ColorTween(
      begin: Colors.grey,
      end: Colors.white,
    ).animate(_animCtrl!)
      ..addListener(() {
        setState(() {});
      });
    _animCtrl!.forward();
    progressIndication();
  }

  bool isLoaded = false;
  late BuildContext cntxt;
  progressIndication() {
    if (_status) {
      setState(() {
        _status = false;
      });
    }
    _timer = Timer.periodic(const Duration(milliseconds: 30), (timer) {
      if (value != 100.0) {
        isLoaded = true;
        setState(() {
          value = (value + 1.0);
        });
      } else {
        _timer!.cancel();
        screenPush(context, WalkThroughScreen());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: double.infinity,
            child: SvgPicture.asset(
              'assets/images/splash_screen_up.svg',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            width: size.width,
            alignment: Alignment.bottomCenter,
            child: Column(
              children: [
                Container(
                  width: size.width,
                  child: Image.asset(
                    'assets/logo/logo.png',
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.09,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  width: size.width * 0.9,
                  height: 7,
                  decoration: BoxDecoration(
                    color: const Color(0xfff9ccc6),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: AnimatedContainer(
                    height: 7,
                    duration: const Duration(seconds: 3, milliseconds: 200),
                    width: isLoaded == false ? 0 : size.width * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                          colors: [
                            Color(0xffff5b59),
                            Color(0xffff5b59),
                            Color(0xffff9002),
                            Color(0xffff9002),
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 23),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Loading',
                        style: GoogleFonts.rubik(
                            color: Colors.black, fontSize: size.width * 0.04),
                      ),
                      Text(
                        "${value.toString().replaceAll('.0', '')} %",
                        style: GoogleFonts.rubik(
                            color: Colors.black, fontSize: size.width * 0.04),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            child: SvgPicture.asset(
              'assets/images/splash_screen_design.svg',
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
