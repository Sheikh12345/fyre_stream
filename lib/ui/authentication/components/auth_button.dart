import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final GestureTapCallback onPressed;
  final String label;
  const AuthButton({Key? key, required this.onPressed, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14),
        margin: const EdgeInsets.symmetric(horizontal: 18),
        alignment: Alignment.center,
        width: size.width,
        decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color(0xffff5b59),
                Color(0xffff5b59),
                Color(0xffff9002),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.circular(7)),
        child: Text(
          label,
          style: TextStyle(
              color: Colors.white,
              fontSize: size.width * 0.055,
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
