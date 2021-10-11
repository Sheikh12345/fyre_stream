import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fyre_stream/ui/compass_screen/components/fstv_tab.dart';
import 'package:fyre_stream/ui/compass_screen/components/events_tab.dart';
import 'package:fyre_stream/ui/compass_screen/components/fyre_gaming.dart';
import 'package:fyre_stream/ui/compass_screen/components/moments_tab.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/dating_tab/dating_tab.dart';
import 'components/market_place.dart';
import 'components/tab_bar_tile.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  int selectedPage = 0;

  PageController controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.only(
            top: 10,
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 12, right: 12, bottom: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Explore',
                      style: GoogleFonts.rubik(
                          color: Colors.black,
                          fontSize: size.width * 0.055,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 3),
                    ),
                    Container(
                      width: 19,
                      height: 19,
                      child: SvgPicture.asset(
                        'assets/icons/search_icon_svg.svg',
                        fit: BoxFit.fill,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Container(
                margin: const EdgeInsets.only(left: 12, right: 12),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MomentTile(
                        onTap: () {
                          setState(() {
                            selectedPage = 0;
                          });
                        },
                        text: 'Moments',
                        backColor: selectedPage == 0
                            ? Color(0xffFE6960)
                            : Colors.white,
                        textColor:
                            selectedPage == 0 ? Colors.white : Colors.grey,
                      ),
                      MomentTile(
                        onTap: () {
                          setState(() {
                            selectedPage = 1;
                          });
                        },
                        text: 'Events',
                        backColor: selectedPage == 1
                            ? Color(0xffFE6960)
                            : Colors.white,
                        textColor:
                            selectedPage == 1 ? Colors.white : Colors.grey,
                      ),
                      MomentTile(
                        onTap: () {
                          setState(() {
                            selectedPage = 2;
                          });
                        },
                        text: 'FSTV',
                        backColor: selectedPage == 2
                            ? Color(0xffFE6960)
                            : Colors.white,
                        textColor:
                            selectedPage == 2 ? Colors.white : Colors.grey,
                      ),
                      MomentTile(
                        onTap: () {
                          setState(() {
                            selectedPage = 3;
                          });
                        },
                        text: 'FyreGaming',
                        backColor: selectedPage == 3
                            ? Color(0xffFE6960)
                            : Colors.white,
                        textColor:
                            selectedPage == 3 ? Colors.white : Colors.grey,
                      ),
                      MomentTile(
                        onTap: () {
                          setState(() {
                            selectedPage = 4;
                          });
                        },
                        text: 'Dating',
                        backColor: selectedPage == 4
                            ? Color(0xffFE6960)
                            : Colors.white,
                        textColor:
                            selectedPage == 4 ? Colors.white : Colors.grey,
                      ),
                      MomentTile(
                        onTap: () {
                          setState(() {
                            selectedPage = 5;
                          });
                        },
                        text: 'Marketplace',
                        backColor: selectedPage == 5
                            ? Color(0xffFE6960)
                            : Colors.white,
                        textColor:
                        selectedPage == 5 ? Colors.white : Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              if (selectedPage == 0) const MomentsTab(),
              if (selectedPage == 1) const EventsTab(),
              if (selectedPage == 2) const FstvTab(),
              if (selectedPage == 3) const FyreGaming(),
              if (selectedPage == 4) const DatingScreen(),
              if (selectedPage == 5) const MarketPlace(),
            ],
          ),
        ),
      ),
    );
  }
}
