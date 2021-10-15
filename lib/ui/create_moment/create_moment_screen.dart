import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fyre_stream/helper_functions/navigation_function.dart';
import 'package:google_fonts/google_fonts.dart';

import 'create_moment2.dart';

class CreateMoment extends StatefulWidget {
  const CreateMoment({Key? key}) : super(key: key);

  @override
  _CreateMomentState createState() => _CreateMomentState();
}

class _CreateMomentState extends State<CreateMoment> {
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
                    margin: EdgeInsets.only(top: 20, right: 20),
                    child: Row(
                      children: [
                        Container(
                          width: size.width * 0.05,
                          height: size.width * 0.05,
                          margin: EdgeInsets.only(right: 20),
                          child: SvgPicture.asset(
                            'assets/icons/moment/settings_sharp_icon.svg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          width: size.width * 0.05,
                          height: size.width * 0.05,
                          child: SvgPicture.asset(
                            'assets/icons/moment/flash_on.svg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ))
              ],
            ),
            Container(
              height: size.height*0.15,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: size.width * 0.12,
                        height: size.width * 0.12,
                        decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/images/girl_image.png')
                          )
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          screenPush(context, CreateMoment2());
                        },
                        child: Container(
                          padding:EdgeInsets.all(5),
                          width: size.width * 0.19,
                          height: size.width * 0.19,
                          decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              shape: BoxShape.circle
                          ),
                          child: Container(
                            width: size.width * 0.17,
                            height: size.width * 0.17,
                            decoration: BoxDecoration(
                              color: Color(0xffFF4500),
                              shape: BoxShape.circle
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Icon(Icons.refresh,color: Colors.white,size: size.width*0.12,),
                      )
                    ],
                  ),
                  SizedBox(
                    height:4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Live Ar',style: GoogleFonts.rubik(
                        color: Colors.white,

                      ),),
                   SizedBox(
                     width: 10,
                   ),
                      Text('Camera',style: GoogleFonts.rubik(
                        color: Colors.white,

                      ),),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Video',style: GoogleFonts.rubik(
                        color: Colors.white,
                      ),)


                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
