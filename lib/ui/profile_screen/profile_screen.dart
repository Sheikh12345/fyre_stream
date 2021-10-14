import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fyre_stream/helper_functions/navigation_function.dart';
import 'package:fyre_stream/ui/menu/menu_options.dart';
import 'package:google_fonts/google_fonts.dart';

import 'friends.dart';
import 'friends_list.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(child: Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Container(
            margin: EdgeInsets.only(left: 20,right: 20,top: 10),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,

                 children: [
                 Container(
                   height: 40,
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Profile",style: GoogleFonts.rubik(
                         color: Color(0xff0C3C5C),
                         fontWeight: FontWeight.w600,
                         fontSize: size.width*0.055,
                         letterSpacing: 1,

                       ),),
                       Container(
                         width: size.width*0.05,
                         height: size.width*0.05,
                         child: SvgPicture.asset('assets/icons/search_icon2.svg',
                           fit: BoxFit.fill,
                         ),
                       ),
                     ],
                   ),
                 ),
                 const SizedBox(
                   height: 14,
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Container(
                       alignment: Alignment.bottomRight,
                       width: size.width*0.2,
                       height: size.width*0.2,
                       decoration: const BoxDecoration(
                         image: DecorationImage(
                             image: AssetImage('assets/images/girl_image.png',
                             ),
                             fit: BoxFit.fill
                         ),
                       ),
                       child: SvgPicture.asset('assets/images/add_story.svg'),
                     ),
                     Column(
                       children: [
                         Text('202',style: GoogleFonts.rubik(
                             color: Color(0xff0C3C5C),
                             fontWeight: FontWeight.w600
                         ),),
                         Text('Posts',style: GoogleFonts.rubik(
                           color: Colors.grey.shade600,
                         ),),
                       ],
                     ),
                     Column(
                       children: [
                         Text('587',style: GoogleFonts.rubik(
                             color: Color(0xff0C3C5C),
                             fontWeight: FontWeight.w600
                         ),),
                         Text('Photos',style: GoogleFonts.rubik(
                           color: Colors.grey.shade600,
                         ),),
                       ],
                     ),
                     InkWell(
                       onTap: (){
                         screenPush(context, const Friends());
                       },
                       child: Column(
                         children: [
                           Text('602',style: GoogleFonts.rubik(
                               color: Color(0xff0C3C5C),
                               fontWeight: FontWeight.w600
                           ),),
                           Text('Friends',style: GoogleFonts.rubik(
                             color: Colors.grey.shade600,
                           ),),
                         ],
                       ),
                     )
                   ],
                 ),
                 SizedBox(
                   height: 10,
                 ),
                 Text('Alexa Danvers',style: GoogleFonts.rubik(
                     color: Color(0xff0C3C5C),
                     fontWeight: FontWeight.w600,
                     fontSize: size.width*0.04,
                     letterSpacing: 0.8
                 ),),
                 SizedBox(
                   height: 10,
                 ),
                 Text('Tech Evangelist\nCo-founder of @outfitby.app',style: GoogleFonts.rubik(
                     color:Colors.grey,
                     fontSize: size.width*0.04,
                     letterSpacing: 0.8
                 ),),   SizedBox(
                   height: 4,
                 ),
                 Text('outfitby.landen.co/',style: GoogleFonts.rubik(
                     color:Colors.red,
                     fontSize: size.width*0.04,
                     letterSpacing: 0.8
                 ),),
                 InkWell(
                   onTap: (){
                     screenPush(context, MenuScreen());
                   },
                   child: Container(
                     margin: EdgeInsets.only(top: 10),
                     width: size.width,
                     alignment: Alignment.center,
                     padding: EdgeInsets.symmetric(vertical: 7),
                     child: Text('Edit Profile',style: GoogleFonts.rubik(
                         color: Color(0xffFF2C01),
                         fontWeight: FontWeight.w600
                     ),),
                     decoration: BoxDecoration(
                         border: Border.all(
                           color: Color(0xffFF2C01),
                         ),
                         borderRadius: BorderRadius.circular(5)
                     ),
                   ),
                 ),
                 SizedBox(
                   height: 10,
                 ),
                 Text('Post',style: GoogleFonts.rubik(
                     color:Color(0xff07283f),
                     fontSize: size.width*0.04,
                     letterSpacing: 0.8
                 ),),
               ],),
             ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 12),
                    height: size.height * 0.06,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: size.width * 0.12,
                              height: size.height * 0.12,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/picture.jpg')),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Alexa Danvers',
                                  style: GoogleFonts.rubik(
                                    color: Color(0xff0C3C5C),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  '25 Minutes ag',
                                  style: GoogleFonts.rubik(
                                      color: Colors.grey,
                                      fontSize: size.width * 0.032),
                                )
                              ],
                            ),
                          ],
                        ),
                        Container(
                          child: SvgPicture.asset(
                              'assets/icons/menu_kabab.svg'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      'My dad once told me laugh and the\n'
                          'world laughs with you',
                      style: GoogleFonts.rubik(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    width: size.width,
                    height: size.height * 0.24,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image:
                            AssetImage('assets/images/car.jpg'),
                            fit: BoxFit.fill)),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: 12, vertical: 10),
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 10),
                              child: SvgPicture.asset(
                                  'assets/icons/love.svg'),
                            ),
                            Text(
                              '12',
                              style: GoogleFonts.rubik(
                                  color: Colors.grey.shade700),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 10),
                              child: SvgPicture.asset(
                                  'assets/icons/comment_icon.svg'),
                            ),
                            Text(
                              '12',
                              style: GoogleFonts.rubik(
                                  color: Colors.grey.shade700),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 10),
                              child: SvgPicture.asset(
                                  'assets/icons/share_icon.svg'),
                            ),
                            Text(
                              '154',
                              style: GoogleFonts.rubik(
                                  color: Colors.grey.shade700),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
