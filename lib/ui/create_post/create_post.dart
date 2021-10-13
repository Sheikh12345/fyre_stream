import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/custom_bottom_sheet.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({Key? key}) : super(key: key);

  @override
  _CreatePostState createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Create Post',
                        style: GoogleFonts.rubik(
                            color: Colors.black,
                            fontSize: size.width * 0.046,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Text(
                    'Post',
                    style: GoogleFonts.rubik(
                        color: Colors.red, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 20),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'What\'s up with you?',
                      hintStyle: TextStyle(
                          fontSize: size.width * 0.056, color: Colors.grey)),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/image_icon1.svg'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Photo/Video',
                        style: GoogleFonts.rubik(
                          color: Colors.grey,
                          fontSize: size.width * 0.043,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/text_icon.svg'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Background color',
                        style: GoogleFonts.rubik(
                          color: Colors.grey,
                          fontSize: size.width * 0.043,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  InkWell(
                    onTap: () {
                      showSheet(context);
                    },
                    child: Row(
                      children: [
                        SvgPicture.asset(
                            'assets/icons/mentioned_people_icon.svg'),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Mention People',
                          style: GoogleFonts.rubik(
                            color: Colors.grey,
                            fontSize: size.width * 0.043,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                          'assets/icons/settings_outline_icon.svg'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Advanced Settings',
                        style: GoogleFonts.rubik(
                          color: Colors.grey,
                          fontSize: size.width * 0.043,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                ],
              ),
            )
          ],
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
        builder: (context) => const CustomBottomSheet());
  }
}
