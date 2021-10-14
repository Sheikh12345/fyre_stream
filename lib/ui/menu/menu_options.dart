import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fyre_stream/helper_functions/navigation_function.dart';
import 'package:fyre_stream/styles/strings.dart';
import 'package:fyre_stream/ui/settings/settings_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
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
              margin: EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      ),
                      Text(
                        "Profile",
                        style: GoogleFonts.rubik(
                          color: Color(0xff0C3C5C),
                          fontWeight: FontWeight.w600,
                          fontSize: size.width * 0.055,
                          letterSpacing: 1,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: size.width * 0.05,
                    height: size.width * 0.05,
                    child: SvgPicture.asset(
                      'assets/icons/menu_round_icon.svg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: size.width * 0.04, top: size.height * 0.02,right: size.width*0.04),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: size.width * 0.12,
                        height: size.width * 0.12,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/girl_image.png'))),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Elyse Perry',
                            style: GoogleFonts.rubik(
                                color: Color(0xff0C3C5C),
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.8),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'See your profile',
                            style: GoogleFonts.rubik(
                              color: Color(0xff90949C),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height*0.02,
                  ),
                  Container(
                    width: size.width,
                    height: size.height*0.63,
                    child: GridView.builder(
                        itemCount: menuIcons.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                    childAspectRatio: 2.9,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 10
                    ), itemBuilder: (context,index){
                      return Stack(
                        alignment: Alignment.centerLeft,
                        overflow: Overflow.visible,
                        children: [
                          Container(
                            width: size.width*0.5,
                            height: size.height*0.1,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(4)
                            ),
                          ),
                      Container(

                        margin: EdgeInsets.only(left: size.width*0.05),
                      width: size.width*0.4,
                        height: size.height*0.1,
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(4)
                        ),
                        child: Text(menuTitle[index],style: GoogleFonts.rubik(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: size.width*0.04
                        ),),
                        alignment: Alignment.center,
                      ),
                          Container(
                            width: size.width*0.1,
                            height: size.width*0.1,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.blue,
                              )
                            ),
                            padding:EdgeInsets.all(7),
                            margin: EdgeInsets.only(right: size.width*0.3),
                            child: SvgPicture.asset(menuIcons[index]),
                          )
                        ],
                      );
                    }),
                  ),

                ],
              ),
            ),
            Container(
              height: size.height*0.17,
              width: size.width,
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Color(0xff75c5e5).withOpacity(0.1)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                  Row(
                    children: [
                      Container(
                        margin:EdgeInsets.symmetric(horizontal: size.width*0.03,),
                        child: SvgPicture.asset('assets/icons/menu/help_and_support_menu.svg'),
                      ),
                      Text('Help and Support',style: GoogleFonts.rubik(
                          color: Colors.black,
                          fontSize: size.width*0.04,
                          letterSpacing: 0.8
                      ),)
                    ],
                  ),
                   Icon(Icons.arrow_forward_ios,color: Colors.black,)
                 ],
               ),
                  InkWell(
                    onTap: (){
                      screenPush(context,SettingsScreen());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin:EdgeInsets.symmetric(horizontal: size.width*0.03,),
                              child: SvgPicture.asset('assets/icons/menu/settings_menu.svg'),
                            ),
                            Text('Settings & Privacy',style: GoogleFonts.rubik(
                                color: Colors.black,
                                fontSize: size.width*0.04,
                                letterSpacing: 0.8
                            ),)
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios,color: Colors.black,)
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin:EdgeInsets.symmetric(horizontal: size.width*0.03,
                            ),
                            child: SvgPicture.asset('assets/icons/menu/logout_menu.svg'),
                          ),
                          Text('Logout',style: GoogleFonts.rubik(
                              color: Colors.black,
                              fontSize: size.width*0.04,
                              letterSpacing: 0.8
                          ),)
                        ],
                      ),

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
