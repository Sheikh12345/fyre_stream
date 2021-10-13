import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fyre_stream/helper_functions/navigation_function.dart';
import 'package:fyre_stream/ui/compass_screen/components/tab_bar_tile.dart';
import 'package:fyre_stream/ui/search_screen/pages/events.dart';
import 'package:fyre_stream/ui/search_screen/pages/filters.dart';
import 'package:fyre_stream/ui/search_screen/pages/people.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  int selectedPage = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 40,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Color(0xff0C3C5C),
                        ),
                      ),
                      Text(
                        "Search",
                        style: GoogleFonts.rubik(
                          color: Color(0xff0C3C5C),
                          fontWeight: FontWeight.w600,
                          fontSize: size.width * 0.055,
                          letterSpacing: 1,
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: (){
                      screenPush(context, FiltersScreen());
                    },
                    child: SizedBox(
                      width: size.width * 0.05,
                      height: size.width * 0.05,
                      child: SvgPicture.asset(
                        'assets/icons/menu_road.svg',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade400, width: 1),
                  borderRadius: BorderRadius.circular(6)),
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search',
                  prefixIcon: Image.asset(
                    'assets/icons/search-outline.png',
                    color: Colors.grey.shade500,
                  ),
                  suffixIcon: Image.asset(
                    'assets/icons/cross_icon.png',
                    color: Colors.grey.shade500,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 12, right: 12, top: 20),
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
                      text: 'People',
                      backColor:
                          selectedPage == 0 ? Color(0xffFE6960) : Colors.white,
                      textColor: selectedPage == 0 ? Colors.white : Colors.grey,
                    ),
                    MomentTile(
                      onTap: () {
                        setState(() {
                          selectedPage = 1;
                        });
                      },
                      text: 'Events',
                      backColor:
                          selectedPage == 1 ? Color(0xffFE6960) : Colors.white,
                      textColor: selectedPage == 1 ? Colors.white : Colors.grey,
                    ),
                    MomentTile(
                      onTap: () {
                        setState(() {
                          selectedPage = 2;
                        });
                      },
                      text: 'FSTV',
                      backColor:
                          selectedPage == 2 ? Color(0xffFE6960) : Colors.white,
                      textColor: selectedPage == 2 ? Colors.white : Colors.grey,
                    ),
                    MomentTile(
                      onTap: () {
                        setState(() {
                          selectedPage = 3;
                        });
                      },
                      text: 'FyreGaming',
                      backColor:
                          selectedPage == 3 ? Color(0xffFE6960) : Colors.white,
                      textColor: selectedPage == 3 ? Colors.white : Colors.grey,
                    ),
                    MomentTile(
                      onTap: () {
                        setState(() {
                          selectedPage = 4;
                        });
                      },
                      text: 'Dating',
                      backColor:
                          selectedPage == 4 ? Color(0xffFE6960) : Colors.white,
                      textColor: selectedPage == 4 ? Colors.white : Colors.grey,
                    ),
                    MomentTile(
                      onTap: () {
                        setState(() {
                          selectedPage = 5;
                        });
                      },
                      text: 'Marketplace',
                      backColor:
                          selectedPage == 5 ? Color(0xffFE6960) : Colors.white,
                      textColor: selectedPage == 5 ? Colors.white : Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            if(selectedPage==0)
              People(),
            if(selectedPage==1)
              EventsScreen()
          ],
        ),
      ),
    );
  }
}
