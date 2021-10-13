import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventsScreen extends StatefulWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  _EventsScreenState createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context,index){
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Row(
              children: [
                Container(
                  width: size.width*0.25,
                  height: size.height*0.14,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/image_media.png')
                    )
                  ),
                ),
                Container(
                  width: size.width*0.69,
                  height: size.height*0.14,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1
                    ),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(6),
                    bottomRight: Radius.circular(6)
                    )
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('JACOB DANIELS',style: GoogleFonts.rubik(
                        color: Colors.grey.shade500
                      ),),
                      Text('The Amazing Hubble',style: GoogleFonts.rubik(
                          color: Color(0xff0C3C5C),
                        fontWeight: FontWeight.w600,
                        fontSize: size.width*0.045
                      ),),
                      Text('Top 3 Reasons why you need a\ncookie recipie',style: GoogleFonts.rubik(
                          color: Colors.grey.shade500
                      ),),
                    ],
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
