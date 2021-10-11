import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FyreGaming extends StatefulWidget {
  const FyreGaming({Key? key}) : super(key: key);

  @override
  _FyreGamingState createState() => _FyreGamingState();
}

class _FyreGamingState extends State<FyreGaming> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 14, right: 14, bottom: 15, top: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "COD: Warzone",
                    style: GoogleFonts.rubik(
                        color: Colors.black,
                        fontSize: size.width * 0.05,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "View All",
                    style: GoogleFonts.rubik(
                        color: const Color(0xff45B4E7),
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            Container(
              width: size.width * 0.95,
              height: size.height * 0.32,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.bottomLeft,
                            width: size.width * 0.95,
                            height: size.height * 0.24,
                            margin: const EdgeInsets.only(bottom: 5),
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                  image: AssetImage(
                                      'assets/images/gaming.png'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          Text(
                            'Social Distancing 101',
                            style: GoogleFonts.rubik(
                              color: const Color(0xff0C3C5C),
                              fontSize: size.width * 0.043,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 4),
                            width: size.width * 0.94,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "60k views 2 days ago",
                                  style: GoogleFonts.rubik(
                                      color: Colors.grey.shade600,
                                      fontSize: size.width * 0.037),
                                ),
                                Text(
                                  'John Bank',
                                  style: GoogleFonts.rubik(
                                    color: Colors.grey.shade600,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 14, right: 14, bottom: 15, top: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Fortnite",
                    style: GoogleFonts.rubik(
                        color: Colors.black,
                        fontSize: size.width * 0.05,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "View All",
                    style: GoogleFonts.rubik(
                        color: const Color(0xff45B4E7),
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            Container(
              width: size.width * 0.95,
              height: size.height * 0.34,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.bottomLeft,
                            width: size.width * 0.95,
                            height: size.height * 0.24,
                            margin: const EdgeInsets.only(bottom: 5),
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                  image: AssetImage(
                                      'assets/images/gaming.png'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          Text(
                            'Social Distancing 101',
                            style: GoogleFonts.rubik(
                              color: const Color(0xff0C3C5C),
                              fontSize: size.width * 0.043,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 4),
                            width: size.width * 0.94,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "60k views 2 days ago",
                                  style: GoogleFonts.rubik(
                                      color: Colors.grey.shade600,
                                      fontSize: size.width * 0.037),
                                ),
                                Text(
                                  'John Bank',
                                  style: GoogleFonts.rubik(
                                    color: Colors.grey.shade600,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 14, right: 14, bottom: 15, top: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Apex Legends",
                    style: GoogleFonts.rubik(
                        color: Colors.black,
                        fontSize: size.width * 0.05,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "View All",
                    style: GoogleFonts.rubik(
                        color: const Color(0xff45B4E7),
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            Container(
              width: size.width * 0.95,
              height: size.height * 0.34,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.bottomLeft,
                            width: size.width * 0.95,
                            height: size.height * 0.24,
                            margin: const EdgeInsets.only(bottom: 5),
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                  image: AssetImage(
                                      'assets/images/gaming.png'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          Text(
                            'Social Distancing 101',
                            style: GoogleFonts.rubik(
                              color: const Color(0xff0C3C5C),
                              fontSize: size.width * 0.043,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 4),
                            width: size.width * 0.94,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "60k views 2 days ago",
                                  style: GoogleFonts.rubik(
                                      color: Colors.grey.shade600,
                                      fontSize: size.width * 0.037),
                                ),
                                Text(
                                  'John Bank',
                                  style: GoogleFonts.rubik(
                                    color: Colors.grey.shade600,
                                  ),
                                )
                              ],
                            ),
                          )
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
