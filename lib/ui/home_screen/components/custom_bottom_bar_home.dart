import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fyre_stream/helper_functions/navigation_function.dart';
import 'package:fyre_stream/ui/create_moment/create_moment_screen.dart';
import 'package:fyre_stream/ui/create_post/create_post.dart';
import 'package:fyre_stream/ui/create_event/craete_event.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBottomSheetHome extends StatefulWidget {
  const CustomBottomSheetHome({Key? key}) : super(key: key);

  @override
  _CustomBottomSheetHomeState createState() => _CustomBottomSheetHomeState();
}

class _CustomBottomSheetHomeState extends State<CustomBottomSheetHome> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.28,
      width: size.width,
      padding: const EdgeInsets.only(left: 20, right: 13, top: 20),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                " Create New Activity",
                style: GoogleFonts.rubik(
                    color: const Color(0xff0C3C5C),
                    fontSize: size.width * 0.05,
                    fontWeight: FontWeight.w700),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.keyboard_arrow_down_sharp,
                    color: Colors.grey,
                  ))
            ],
          ),
          InkWell(
            onTap: () {
              screenPush(context, const CreatePost());
            },
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 20),
                  child: SvgPicture.asset('assets/icons/image_icon1.svg'),
                ),
                Text(
                  'Post',
                  style: GoogleFonts.rubik(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                      fontSize: size.width * 0.048),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              screenPush(context, const CreateEvent());
            },
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 20),
                  child: SvgPicture.asset('assets/icons/calender_icon.svg'),
                ),
                Text(
                  'Event',
                  style: GoogleFonts.rubik(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                      fontSize: size.width * 0.048),
                )
              ],
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pop(context);
              screenPush(context, CreateMoment());
            },
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 20),
                  child: SvgPicture.asset('assets/icons/flash.svg'),
                ),
                Text(
                  'Moment',
                  style: GoogleFonts.rubik(
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: size.width * 0.048,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
