import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:fyre_stream/helper_functions/navigation_function.dart';
import 'package:fyre_stream/styles/strings.dart';
import 'package:google_fonts/google_fonts.dart';

import 'market_place_detail.dart';

class MarketPlace extends StatefulWidget {
  const MarketPlace({Key? key}) : super(key: key);

  @override
  _MarketPlaceState createState() => _MarketPlaceState();
}

class _MarketPlaceState extends State<MarketPlace> {
  final CarouselSliderController sliderController = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 10),
        child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context,index){
          return InkWell(
            onTap: (){
              screenPush(context,MarketPlaceDetail());
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Container(
              height: size.height * 0.26,
                child: CarouselSlider.builder(
                    unlimitedMode: true,
                    enableAutoSlider: true,
                    controller: sliderController,
                    slideBuilder: (index) {
                      return Container(
                        alignment: Alignment.topRight,
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(sliderImage[index]),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(14)
                        ),
                        child: IconButton(
                          onPressed: () {

                          },
                          icon: Icon(Icons.favorite,color: Colors.red,
                            size: size.width*0.05,
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
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Atlanta Georgia",style: GoogleFonts.rubik(
                        color: Colors.grey,
                        fontWeight: FontWeight.w600
                      ),),
                    Row(
                      children: [
                        Icon(Icons.star_rate,color: Colors.red,
                          size: size.width*0.04,
                        ),Text('4.7 ',style: GoogleFonts.rubik(
                          color: Colors.black,
fontSize: size.width*0.03
                        ),),Text('(102)',style: GoogleFonts.rubik(
                          color: Colors.grey.shade700,
fontSize: size.width*0.03
                        ),),
                      ],
                    ),

                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text('White Breeze Pool 1BD Apaartment',style: GoogleFonts.rubik(
                    color: Color(0xff0C3C5C),
                    fontWeight: FontWeight.w500
                  ),)
                ],
              ),
            )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
