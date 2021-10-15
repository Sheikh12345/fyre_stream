import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fyre_stream/helper_functions/navigation_function.dart';
import 'package:fyre_stream/ui/phone_ringing/phone_receiver.dart';
import 'package:google_fonts/google_fonts.dart';

class PhoneRinging extends StatefulWidget {
  const PhoneRinging({Key? key}) : super(key: key);

  @override
  _PhoneRingingState createState() => _PhoneRingingState();
}

class _PhoneRingingState extends State<PhoneRinging> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          padding: EdgeInsets.only(left: 20,right: 20,top: 20),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/call_bg.jpg'),
              fit: BoxFit.fill
              )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text('Incoming Call',style: GoogleFonts.rubik(
                      color: Colors.white.withOpacity(0.7),
                      fontSize: size.width*0.03
                    ),),
                    SizedBox(
                      height: size.height*0.002,
                    ),
                    Text('Kashif Hafeez',style: GoogleFonts.rubik(
                        color: Colors.white,
                        fontSize: size.width*0.04,
                      fontWeight: FontWeight.w600
                    ),),
                  ],),
                  Container(
                    child: SvgPicture.asset('assets/images/top_button.svg'),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(bottom: size.height*0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: SvgPicture.asset('assets/images/end_call.svg'),
                    ),
                    InkWell(
                      onTap: (){
                        screenPush(context,const VideoCallAnswer());
                      },
                      child: Container(
                        child: SvgPicture.asset('assets/images/receive_call.svg'),
                      ),
                    )
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
