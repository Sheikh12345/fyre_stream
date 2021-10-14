import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textClr;
  final GestureTapCallback? onTap;
  const CustomButton(
      {Key? key,
      required this.text,
      required this.bgColor,
      required this.textClr,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: size.width * 0.27,
        height: size.height * 0.0565,
        decoration: BoxDecoration(
            color: bgColor, borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Colors.grey,
          width: 1
        )
        ),
        child: Text(
          '$text',
          style: GoogleFonts.rubik(
              color: textClr, fontSize: size.width * 0.04),
        ),
      ),
    );
  }
}
