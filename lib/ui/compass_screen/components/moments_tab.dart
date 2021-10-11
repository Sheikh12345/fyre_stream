import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MomentsTab extends StatefulWidget {
  const MomentsTab({Key? key}) : super(key: key);

  @override
  _MomentsTabState createState() => _MomentsTabState();
}

class _MomentsTabState extends State<MomentsTab> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(top: 15),
        width: size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 14, bottom: size.height * 0.022),
                child: Text(
                  'Most Popular Moments',
                  style: GoogleFonts.rubik(
                      color: Colors.black,
                      fontSize: size.width * 0.043,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                height: size.height * 0.2,
                child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        alignment: Alignment.bottomLeft,
                        width: size.width * 0.7,
                        height: size.height * 0.2,
                        margin: EdgeInsets.only(left: index == 0 ? 2 : 10),
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image:
                                    AssetImage('assets/images/moment_view.jpg'),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(15)),
                        child: Container(
                          padding: EdgeInsets.only(left: 12, bottom: 12),
                          alignment: Alignment.bottomLeft,
                          width: size.width * 0.7,
                          height: size.height * 0.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Colors.black12, Colors.black54]),
                          ),
                          child: Container(
                            height: size.height * 0.05,
                            child: Row(
                              children: [
                                Container(
                                  width: size.width * 0.11,
                                  height: size.width * 0.11,
                                  margin: const EdgeInsets.only(right: 5),
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/picture.jpg'))),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      'Alexa Danvers',
                                      style: GoogleFonts.rubik(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: size.width * 0.034,
                                      ),
                                    ),
                                    Text(
                                      '30 minutes ago',
                                      style: GoogleFonts.rubik(
                                        color: Colors.grey.shade200,
                                        fontWeight: FontWeight.w400,
                                        fontSize: size.width * 0.03,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: 14, bottom: size.height * 0.022, top: 14),
                child: Text(
                  'All Moments',
                  style: GoogleFonts.rubik(
                      color: Colors.black,
                      fontSize: size.width * 0.043,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                width: size.width,
                height: size.height * 0.27,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/card_image.png'),
                      fit: BoxFit.fill),
                ),
                child: Container(
                  margin: EdgeInsets.only(left: 10, bottom: 15),
                  height: size.height * 0.065,
                  child: Row(
                    children: [
                      Container(
                        width: size.width * 0.14,
                        height: size.width * 0.14,
                        margin: const EdgeInsets.only(right: 5),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/picture.jpg'))),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'Alexa Danvers',
                            style: GoogleFonts.rubik(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: size.width * 0.04,
                            ),
                          ),
                          Text(
                            '30 minutes ago',
                            style: GoogleFonts.rubik(
                              color: Colors.grey.shade200,
                              fontWeight: FontWeight.w400,
                              fontSize: size.width * 0.034,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                width: size.width,
                height: size.height * 0.27,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/card_image.png'),
                      fit: BoxFit.fill),
                ),
                child: Container(
                  margin: EdgeInsets.only(left: 10, bottom: 15),
                  height: size.height * 0.065,
                  child: Row(
                    children: [
                      Container(
                        width: size.width * 0.14,
                        height: size.width * 0.14,
                        margin: const EdgeInsets.only(right: 5),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/picture.jpg'))),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'Alexa Danvers',
                            style: GoogleFonts.rubik(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: size.width * 0.04,
                            ),
                          ),
                          Text(
                            '30 minutes ago',
                            style: GoogleFonts.rubik(
                              color: Colors.grey.shade200,
                              fontWeight: FontWeight.w400,
                              fontSize: size.width * 0.034,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                width: size.width,
                height: size.height * 0.27,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/card_image.png'),
                      fit: BoxFit.fill),
                ),
                child: Container(
                  margin: EdgeInsets.only(left: 10, bottom: 15),
                  height: size.height * 0.065,
                  child: Row(
                    children: [
                      Container(
                        width: size.width * 0.14,
                        height: size.width * 0.14,
                        margin: const EdgeInsets.only(right: 5),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/picture.jpg'))),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'Alexa Danvers',
                            style: GoogleFonts.rubik(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: size.width * 0.04,
                            ),
                          ),
                          Text(
                            '30 minutes ago',
                            style: GoogleFonts.rubik(
                              color: Colors.grey.shade200,
                              fontWeight: FontWeight.w400,
                              fontSize: size.width * 0.034,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
