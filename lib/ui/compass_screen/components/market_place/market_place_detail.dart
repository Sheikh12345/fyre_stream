import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:fyre_stream/styles/strings.dart';
import 'package:fyre_stream/ui/authentication/components/auth_button.dart';
import 'package:google_fonts/google_fonts.dart';

class MarketPlaceDetail extends StatefulWidget {
  const MarketPlaceDetail({Key? key}) : super(key: key);

  @override
  _MarketPlaceDetailState createState() => _MarketPlaceDetailState();
}

class _MarketPlaceDetailState extends State<MarketPlaceDetail> {
  final CarouselSliderController sliderController = CarouselSliderController();

  bool isEntireApart = false;
  bool isSparkingClean = false;
  bool isGreatLocation = false;
  bool isGreatCheckIn = false;

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
                height: size.height * 0.3,
                child: CarouselSlider.builder(
                    unlimitedMode: true,
                    enableAutoSlider: true,
                    controller: sliderController,
                    slideBuilder: (index) {
                      return Container(
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(sliderImage[index]),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: size.width * 0.05,
                          ),
                        ),
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
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Atlanta Georgia",
                            style: GoogleFonts.rubik(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star_rate,
                                color: Colors.red,
                                size: size.width * 0.04,
                              ),
                              Text(
                                '4.7 ',
                                style: GoogleFonts.rubik(
                                    color: Colors.black,
                                    fontSize: size.width * 0.03),
                              ),
                              Text(
                                '(102)',
                                style: GoogleFonts.rubik(
                                    color: Colors.grey.shade700,
                                    fontSize: size.width * 0.03),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Unique Architecture\nCave House',
                      style: GoogleFonts.rubik(
                          color: Color(0xff0C3C5C),
                          fontWeight: FontWeight.w600,
                          fontSize: size.width * 0.048),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'WHAT TO EXPECT',
                      style: GoogleFonts.rubik(
                          color: Color(0xff0C3C5C),
                          fontWeight: FontWeight.w400,
                          fontSize: size.width * 0.045),
                    ),
                    selection(size, 'Entire Apartment', isEntireApart, () {
                      setState(() {
                        isEntireApart = !isEntireApart;
                      });
                    }),
                    selection(size, 'Sparkling Clean', isEntireApart, () {
                      setState(() {
                        isEntireApart = !isEntireApart;
                      });
                    }),
                    selection(size, 'Great Location', isEntireApart, () {
                      setState(() {
                        isEntireApart = !isEntireApart;
                      });
                    }),
                    selection(size, 'Great check-in experience', isEntireApart,
                        () {
                      setState(() {
                        isEntireApart = !isEntireApart;
                      });
                    }),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nibh pellentesque convallis condimentum id varius commodo leo aliquet egestas. Parturient aliquet nunc senectus ultrices ut elit quisque urna. Quis lacinia in tellus imperdiet sed. Nunc, eleifend vitae sit tellus. Vel et semper nullam aliquet sollicitudin lectus malesuada felis. Blandit aliquam vestibulum et nibh vestibulum. Id montes, feugiat justo nulla habitasse suspendisse penatibus. In tempor sit metus.',
                      style: GoogleFonts.rubik(
                        color: Colors.grey,
                        fontSize: size.width * 0.04,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: size.height * 0.07,
          margin: const EdgeInsets.only(bottom: 6),
          child: AuthButton(
            onPressed: () {},
            label: 'Book Place',
          ),
        ),
      ),
    );
  }

  Widget selection(Size size, String text, bool value, VoidCallback onTap) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.001),
      child: Row(
        children: [
          IconButton(
              onPressed: onTap,
              icon: Icon(
                value ? Icons.check_circle : Icons.check_circle_outline,
                color: Colors.red,
              )),
          Text(
            "$text",
            style: GoogleFonts.rubik(
              color: Colors.grey.shade700,
              fontSize: size.width * 0.042,
            ),
          ),
        ],
      ),
    );
  }
}
