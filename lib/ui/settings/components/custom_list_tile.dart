import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomListTile extends StatelessWidget {
  final String image;
  final String title;
  final String heading;
  final GestureTapCallback? onTap;
  const CustomListTile({Key? key,required this.image,required this.title,required this.heading, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 14,vertical: size.height*0.01),
        child: Row(
          children: [
            Container(
              child: SvgPicture.asset(image),
            ),
            SizedBox(
              width: 7,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,style: GoogleFonts.rubik(
                    color: Color(0xff0C3C5C),
                    fontSize: size.width*0.04,
                    fontWeight: FontWeight.w500
                ),),
                SizedBox(
                  height: 2,
                ),
                Text(heading,style: GoogleFonts.rubik(
                    color: Colors.grey.shade600
                ),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
