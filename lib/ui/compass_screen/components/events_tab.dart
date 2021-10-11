import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventsTab extends StatefulWidget {
  const EventsTab({Key? key}) : super(key: key);

  @override
  _EventsTabState createState() => _EventsTabState();
}

class _EventsTabState extends State<EventsTab> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(top: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 14, right: 14,bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Sports",
                            style: GoogleFonts.rubik(
                                color: Colors.black,
                                fontSize: size.width * 0.05,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "View All",
                            style: GoogleFonts.rubik(
                                color: Color(0xff45B4E7),
                                fontSize: size.width * 0.04,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: size.width,
                      height: size.height * 0.27,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 5,bottom: 5),
                                    alignment: Alignment.bottomLeft,
                                    width: size.width * 0.42,
                                    height: size.height * 0.14,
                                    decoration: BoxDecoration(
                                        color: Colors.orange,
                                        image: const DecorationImage(
                                          image: AssetImage('assets/images/card_image.png'),
                                          fit: BoxFit.fill
                                        ),
                                        borderRadius: BorderRadius.circular(7)),
                                    child: Container(
padding: EdgeInsets.all(5),
                                      child: Text('US\$220+',style: GoogleFonts.rubik(
                                        color: Colors.white,
                                        fontSize: size.width*0.025,
                                        letterSpacing: 0.8
                                      ),),
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(20)
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    "Seattle Sounders FC at\n"
                                    "Toronto FC",
                                    style: GoogleFonts.rubik(
                                        color: const Color(0xff0C3C5C),
                                        fontWeight: FontWeight.w500),

                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  const Text("Sat July 18 - 7:30pm")
                                ],
                              ),
                            );
                          }),
                    )
                  ],
                ),
              ),

              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 14, right: 14,bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Concerts",
                            style: GoogleFonts.rubik(
                                color: Colors.black,
                                fontSize: size.width * 0.05,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "View All",
                            style: GoogleFonts.rubik(
                                color: Color(0xff45B4E7),
                                fontSize: size.width * 0.04,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: size.width,
                      height: size.height * 0.27,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 5,bottom: 5),
                                    alignment: Alignment.bottomLeft,
                                    width: size.width * 0.42,
                                    height: size.height * 0.14,
                                    decoration: BoxDecoration(
                                        color: Colors.orange,
                                        image: const DecorationImage(
                                            image: AssetImage('assets/images/card_image.png'),
                                            fit: BoxFit.fill
                                        ),
                                        borderRadius: BorderRadius.circular(7)),
                                    child: Container(
                                      padding: EdgeInsets.all(5),
                                      child: Text('US\$220+',style: GoogleFonts.rubik(
                                          color: Colors.white,
                                          fontSize: size.width*0.025,
                                          letterSpacing: 0.8
                                      ),),
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.circular(20)
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    "Seattle Sounders FC at\n"
                                        "Toronto FC",
                                    style: GoogleFonts.rubik(
                                        color: const Color(0xff0C3C5C),
                                        fontWeight: FontWeight.w500),

                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  const Text("Sat July 18 - 7:30pm")
                                ],
                              ),
                            );
                          }),
                    )
                  ],
                ),
              ),

              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 14, right: 14,bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Comedy",
                            style: GoogleFonts.rubik(
                                color: Colors.black,
                                fontSize: size.width * 0.05,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "View All",
                            style: GoogleFonts.rubik(
                                color: Color(0xff45B4E7),
                                fontSize: size.width * 0.04,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: size.width,
                      height: size.height * 0.3,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 5,bottom: 5),
                                    alignment: Alignment.bottomLeft,
                                    width: size.width * 0.42,
                                    height: size.height * 0.14,
                                    decoration: BoxDecoration(
                                        color: Colors.orange,
                                        image: const DecorationImage(
                                            image: AssetImage('assets/images/card_image.png'),
                                            fit: BoxFit.fill
                                        ),
                                        borderRadius: BorderRadius.circular(7)),
                                    child: Container(
                                      padding: EdgeInsets.all(5),
                                      child: Text('US\$220+',style: GoogleFonts.rubik(
                                          color: Colors.white,
                                          fontSize: size.width*0.025,
                                          letterSpacing: 0.8
                                      ),),
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.circular(20)
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    "Seattle Sounders FC at\n"
                                        "Toronto FC",
                                    style: GoogleFonts.rubik(
                                        color: const Color(0xff0C3C5C),
                                        fontWeight: FontWeight.w500),

                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  const Text("Sat July 18 - 7:30pm")
                                ],
                              ),
                            );
                          }),
                    )
                  ],
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
