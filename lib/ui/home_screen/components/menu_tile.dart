import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuTile extends StatelessWidget {
  final String imageAddress;
  final String text;
  final onTap;
  const MenuTile({Key? key, required this.imageAddress, required this.text, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      child: Container(
        child:Row(
          children: [
            Container(
              child: SvgPicture.asset(imageAddress),
              margin: EdgeInsets.symmetric(horizontal: 10),
            ),
            Text(text,style: GoogleFonts.rubik(
                color: Colors.grey.shade600
            ),)
          ],
        ),
      ),
    );
  }
}
