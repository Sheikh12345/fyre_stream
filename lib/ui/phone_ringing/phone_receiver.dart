import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class VideoCallAnswer extends StatefulWidget {
  const VideoCallAnswer({Key? key}) : super(key: key);

  @override
  _VideoCallAnswerState createState() => _VideoCallAnswerState();
}

class _VideoCallAnswerState extends State<VideoCallAnswer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/call_bg.jpg'),
                  fit: BoxFit.fill)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'You are video calling with',
                        style: GoogleFonts.rubik(
                            color: Colors.white.withOpacity(0.7),
                            fontSize: size.width * 0.03),
                      ),
                      SizedBox(
                        height: size.height * 0.002,
                      ),
                      Text(
                        'Kashif Hafeez',
                        style: GoogleFonts.rubik(
                            color: Colors.white,
                            fontSize: size.width * 0.06,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Container(
                    child: SvgPicture.asset('assets/images/speaker_icon.svg'),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    child: SvgPicture.asset('assets/images/image_boy.svg'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: size.height * 0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: SvgPicture.asset('assets/images/end_call.svg'),
                        ),
                        Container(
                          child:
                              SvgPicture.asset('assets/images/video_icon.svg'),
                        ),
                        Container(
                          child: SvgPicture.asset('assets/images/mic_icon.svg'),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
