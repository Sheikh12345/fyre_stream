import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fyre_stream/styles/strings.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateEventReady extends StatefulWidget {
  const CreateEventReady({Key? key}) : super(key: key);

  @override
  _CreateEventReadyState createState() => _CreateEventReadyState();
}

class _CreateEventReadyState extends State<CreateEventReady> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height * 0.6,
              child: CarouselSlider.builder(
                  unlimitedMode: true,
                  enableAutoSlider: true,
                  slideBuilder: (index) {
                    return Container(
                      width: size.width,
                      height: size.height*0.6,
                      child: Image.asset('assets/images/image_slider.png',fit: BoxFit.fill,),
                    );
                  },
                  slideIndicator: CircularSlideIndicator(
                      padding: const EdgeInsets.only(bottom: 15),
                      indicatorRadius: 4,
                      currentIndicatorColor: Colors.white,
                      itemSpacing: 13),
                  itemCount: 5),
            ),
            Container(
              margin: EdgeInsets.only(left: size.width*0.03,right: size.width*0.03,
              top: size.height*0.02
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text('The Comedy Club',style: GoogleFonts.rubik(
                           color: Color(0xff0C3C5C),
                           fontSize: size.width*0.05,
                           fontWeight: FontWeight.w700,

                         ),),
                         SizedBox(
                           height: 4,
                         ),
                         Text('JUSTIN PARKER',style: GoogleFonts.rubik(
                           color: Colors.grey.shade600,
                           fontSize: size.width*0.043,

                         ),)
                       ],
                     ),
                      Container(
                        padding: EdgeInsets.all(6),
                        child: Text('Directions',style: GoogleFonts.rubik(
                          color: Color(0xffFF6961)
                        ),),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: Color(0xffFF6961),
                            width: 2
                          )
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text('Friday 20.03.2022, 8:00 PM - 11:59 PM',style: GoogleFonts.rubik(
                    color: Colors.grey.shade600,
                    letterSpacing: 1
                  ),),
                  SizedBox(
                    height: size.height*0.03,
                  ),
                  Text('RSVP (15)',style: GoogleFonts.rubik(
                    color: Color(0xff0C3C5C),
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1
                  ),),
                  Container(
                    height: size.height * 0.1,
                    width: size.width,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          if (index == 0) {
                            return InkWell(
                              onTap: (){
                              },
                              child: Container(
                                width: size.width * 0.12,
                                height: size.width * 0.12,
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                decoration: const BoxDecoration(
                                    color: Color(0xffFF6961), shape: BoxShape.circle),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            );
                          }
                          return Container(
                            width: size.width * 0.12,
                            height: size.width * 0.12,
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            decoration: const BoxDecoration(
                                color: Color(0xffFF6961),
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/girl_image.png'))),
                          );
                        }),
                  ),
                  Text('Hashtags',style: GoogleFonts.rubik(
                    color: Color(0xff0C3C5C),
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1
                  ),),
                  SizedBox(
                    height: 4,
                  ),
                  Text('#comedian rocket #thirstythursday',style: GoogleFonts.rubik(
                      color:  Colors.grey,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1
                  ),),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Location',style: GoogleFonts.rubik(
                      color: Color(0xff0C3C5C),
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1
                  ),),
                  SizedBox(
                    height: 4,
                  ),
                  Text('Margaret Mitchell House',style: GoogleFonts.rubik(
                      color:  Colors.grey,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1
                  ),),

                   SizedBox(
                    height: 10,
                  ),
                  Text('Description',style: GoogleFonts.rubik(
                      color: Color(0xff0C3C5C),
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1
                  ),),
                  SizedBox(
                    height: 4,
                  ),
                  Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nibh pellentesque convallis condimentum id varius commodo leo aliquet egestas. Parturient aliquet nunc senectus ultrices ut elit quisque urna. Quis lacinia in tellus imperdiet sed. Nunc, eleifend vitae sit tellus. Vel et semper nullam',style: GoogleFonts.rubik(
                      color:  Colors.grey,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1
                  ),),

                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
