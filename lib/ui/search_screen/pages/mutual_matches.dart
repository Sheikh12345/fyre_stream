import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fyre_stream/helper_functions/navigation_function.dart';
import 'package:fyre_stream/ui/search_screen/pages/filters_2.dart';
import 'package:google_fonts/google_fonts.dart';

import 'filters.dart';

class MutualMatches extends StatefulWidget {
  const MutualMatches({Key? key}) : super(key: key);

  @override
  _MutualMatchesState createState() => _MutualMatchesState();
}

class _MutualMatchesState extends State<MutualMatches> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 40,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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
                        "Mutual Matches",
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
                    onTap: () {
                      screenPush(context, const Filters2());
                    },
                    child: SizedBox(
                      width: size.width * 0.08,
                      height: size.width * 0.08,
                      child: SvgPicture.asset(
                        'assets/icons/mutual_search.svg',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              child: GridView.builder(
                itemCount: 3,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 4.0,
                    childAspectRatio: 0.8),
                itemBuilder: (context, index) {
                  return Container(
                    width: size.width * 0.45,
                    height: size.height * 0.5,
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            width: size.width * 0.45,
                          ),
                        ),
                        Text('Angelina Anderson')
                      ],
                    ),
                  );
                },
              ),
            ))
          ],
        ),
      ),
    );
  }
}
