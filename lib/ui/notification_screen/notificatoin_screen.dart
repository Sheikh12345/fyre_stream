import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        width: size.width,
        height: size.height,
        margin: EdgeInsets.only(right: 20,
        left: 20,
          top: 10
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Container(
             height: 40,
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text("Activity",style: GoogleFonts.rubik(
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
            Expanded(
              child: ListView.builder(itemBuilder: (context,index){
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.bottomRight,
                          width: size.width*0.14,
                          height: size.width*0.14,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/girl_image.png')
                              )
                          ),
                          child: Container(
                              child: SvgPicture.asset('assets/icons/like_icon.svg')),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(text: TextSpan(text: 'Reziabanks',
                                children: [
                                  TextSpan(text: ' Liked your post',
                                      children: [

                                      ],
                                      style: TextStyle(
                                          color: Colors.grey.shade600
                                      )
                                  )
                                ],
                                style: TextStyle(
                                    color: Color(0xff0C3C5C)
                                )
                            )),
                            SizedBox(
                              height: 5,
                            ),
                            Text('2 minutes ago', style: TextStyle(
                                color: Colors.grey.shade600
                            ))
                          ],)
                      ],
                    ),
                      SvgPicture.asset('assets/icons/kabab_menu.svg')
                    ],
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
