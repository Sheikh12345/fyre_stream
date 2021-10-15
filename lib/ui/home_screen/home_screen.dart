import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fyre_stream/helper_functions/navigation_function.dart';
import 'package:fyre_stream/styles/colors.dart';
import 'package:fyre_stream/ui/phone_ringing/phone_ringing.dart';
import 'package:fyre_stream/ui/search_screen/search_main.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/custom_bottom_bar_home.dart';
import 'components/menu_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool momentMenuIsVisible = false;
  bool momentIsVisible = true;
  bool ratingIsVisible = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 5,
              ),
              Container(
                height: 45,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: size.width * 0.4,
                      child: Image.asset(
                        'assets/logo/logo.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            print("Kashif");
                            screenPush(context, const SearchScreen());
                          },
                          child: Container(
                            width: size.width * 0.085,
                            height: size.width * 0.085,
                            child: SvgPicture.asset(
                              'assets/icons/search_icon.svg',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            screenPush(context, const PhoneRinging());
                          },
                          child: Container(
                            width: size.width * 0.055,
                            height: size.width * 0.055,
                            child: SvgPicture.asset(
                              'assets/icons/messanger_icon.svg',
                              fit: BoxFit.fill,
                            ),
                            margin: const EdgeInsets.symmetric(horizontal: 7),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            showSheet(context);
                          },
                          child: Container(
                            width: size.width * 0.055,
                            height: size.width * 0.055,
                            margin: const EdgeInsets.symmetric(horizontal: 3),
                            child: SvgPicture.asset(
                              'assets/icons/menu_icon.svg',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: size.height * 0.15,
                        margin: const EdgeInsets.symmetric(horizontal: 14),
                        child: Row(
                          children: [
                            Container(
                              width: size.width * 0.1,
                              height: size.width * 0.1,
                              margin: EdgeInsets.only(right: size.width * 0.04),
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/picture.jpg')),
                                  shape: BoxShape.circle),
                            ),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'What are you sharing?',
                                    hintStyle: GoogleFonts.rubik(
                                        fontSize: size.width * 0.04,
                                        color: Colors.grey)),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            MenuTile(
                              imageAddress: 'assets/icons/image_icon.svg',
                              text: 'Photo',
                              onTap: () {},
                            ),
                            MenuTile(
                              imageAddress: 'assets/icons/emoji_icon.svg',
                              text: 'Feelings',
                              onTap: () {},
                            ),
                            MenuTile(
                              imageAddress: 'assets/icons/boost_icon.svg',
                              text: 'Blast',
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: size.height * 0.03),
                          width: size.width,
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 14),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Moments",
                                          style: GoogleFonts.rubik(
                                              color: Colors.black,
                                              fontSize: size.width * 0.045,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              momentMenuIsVisible =
                                                  !momentMenuIsVisible;
                                            });
                                          },
                                          child: Container(
                                            child: SvgPicture.asset(
                                                'assets/icons/menu_kabab.svg'),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 10),
                                    width: size.width,
                                    height: size.height * 0.2,
                                    child: ListView.builder(
                                        itemCount: 5,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context, index) {
                                          return Container(
                                            width: size.width * 0.27,
                                            child: Stack(
                                              children: [
                                                Container(
                                                  width: size.width * 0.31,
                                                  height: size.height * 0.2,
                                                  margin: EdgeInsets.symmetric(
                                                      horizontal: 3),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                    image: const DecorationImage(
                                                        image: AssetImage(
                                                            'assets/images/backImage.jpg'),
                                                        fit: BoxFit.fill),
                                                  ),
                                                ),
                                                Container(
                                                  width: size.width * 0.31,
                                                  height: size.height * 0.2,
                                                  margin: EdgeInsets.symmetric(
                                                      horizontal: 3),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                      gradient:
                                                          const LinearGradient(
                                                              colors: [
                                                            Colors.white24,
                                                            Colors.white24,
                                                            Colors.black26,
                                                            Colors.black26
                                                          ],
                                                              begin: Alignment
                                                                  .topCenter,
                                                              end: Alignment
                                                                  .bottomCenter)),
                                                ),
                                                Positioned(
                                                  bottom: size.height * 0.045,
                                                  left: size.width * 0.07,
                                                  child: Container(
                                                    alignment: Alignment.center,
                                                    width: size.width * 0.13,
                                                    height: size.width * 0.13,
                                                    decoration: BoxDecoration(
                                                      gradient:
                                                          linearGradientTopToBottom,
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Container(
                                                      width: size.width * 0.12,
                                                      height: size.width * 0.12,
                                                      decoration:
                                                          const BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        image: DecorationImage(
                                                            image: AssetImage(
                                                                'assets/images/picture.jpg')),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  bottom: size.height * 0.018,
                                                  left: size.width * 0.076,
                                                  child: Text(
                                                    'Zbabey',
                                                    style: GoogleFonts.rubik(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                )
                                              ],
                                            ),
                                          );
                                        }),
                                  ),
                                ],
                              ),
                              Positioned(
                                top: 55,
                                right: 5,
                                child: Visibility(
                                  visible: momentMenuIsVisible,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: size.width * 0.03,
                                        vertical: 5),
                                    width: size.width * 0.8,
                                    height: size.height * 0.17,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Show/Hide Moments',
                                                  style: GoogleFonts.rubik(
                                                      color: Color(0xff0C3C5C),
                                                      fontSize:
                                                          size.width * 0.04,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                SizedBox(
                                                  height: 4,
                                                ),
                                                Text(
                                                  'You can change this anytime',
                                                  style: GoogleFonts.rubik(
                                                      color: Colors.grey,
                                                      fontSize:
                                                          size.width * 0.034,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ],
                                            ),
                                            Switch(
                                              value: momentIsVisible,
                                              onChanged: (value) {
                                                setState(() {
                                                  momentIsVisible = value;
                                                });
                                              },
                                              activeColor: primaryColor,
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Share Your Moments',
                                                  style: GoogleFonts.rubik(
                                                      color: Color(0xff0C3C5C),
                                                      fontSize:
                                                          size.width * 0.04,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                const SizedBox(
                                                  height: 4,
                                                ),
                                                Text(
                                                  'Add your photos, Videos, etc',
                                                  style: GoogleFonts.rubik(
                                                      color: Colors.grey,
                                                      fontSize:
                                                          size.width * 0.034,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              margin:
                                                  EdgeInsets.only(right: 10),
                                              child: SvgPicture.asset(
                                                  'assets/icons/moment_add_icon.svg'),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )),
                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 12),
                                  height: size.height * 0.06,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                          SizedBox(
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
                                                    fontSize:
                                                        size.width * 0.032),
                                              )
                                            ],
                                          ),
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                ratingIsVisible =
                                                    !ratingIsVisible;
                                              });
                                              print(ratingIsVisible);
                                            },
                                            child: Container(
                                              margin: const EdgeInsets.only(
                                                  bottom: 30, left: 5),
                                              child: SvgPicture.asset(
                                                  'assets/icons/fire_icon.svg'),
                                            ),
                                          )
                                        ],
                                      ),
                                      Container(
                                        child: SvgPicture.asset(
                                          'assets/icons/menu_kabab.svg',
                                        ),
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
                                          image: AssetImage(
                                              'assets/images/car.jpg'),
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
                          if (ratingIsVisible)
                            Positioned(
                              top: size.height * 0.06,
                              left: size.width * 0.4,
                              child: Container(
                                width: size.width * 0.4,
                                height: size.height * 0.1,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Give and earn reward',
                                      style: GoogleFonts.rubik(
                                          color: Colors.grey.shade700,
                                          fontSize: size.width * 0.03),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          child: SvgPicture.asset(
                                              'assets/icons/rating_icon.svg'),
                                        ),
                                        Container(
                                          child: SvgPicture.asset(
                                              'assets/icons/rating_icon.svg'),
                                        ),
                                        Container(
                                          child: SvgPicture.asset(
                                              'assets/icons/rating_icon.svg'),
                                        ),
                                        Container(
                                          child: SvgPicture.asset(
                                              'assets/icons/rating_icon.svg'),
                                        ),
                                        Container(
                                          child: SvgPicture.asset(
                                              'assets/icons/rating_icon.svg'),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                        ],
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
              )
            ],
          ),
        ),
      ),
    );
  }

  showSheet(BuildContext context) {
    return showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(26),
          ),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        context: context,
        builder: (context) => const CustomBottomSheetHome());
  }
}
