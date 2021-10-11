import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MomentTile extends StatelessWidget {
  final String text;
  final GestureTapCallback onTap;
  final textColor;
  final backColor;
  const MomentTile({Key? key, required this.text, required this.onTap, this.textColor, this.backColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return    InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 34,
        child: Text(
          text,
          style: GoogleFonts.rubik(
              color: textColor,
              fontWeight: FontWeight.w600,
              fontSize: size.width * 0.04),
        ),
        decoration: BoxDecoration(
            color: backColor,
            borderRadius: BorderRadius.circular(30)),
      ),
    );
  }
}
