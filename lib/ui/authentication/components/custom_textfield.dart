import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  const CustomTextField(
      {Key? key, required this.labelText, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Colors.white24,
            offset: Offset(1, 1),
            blurRadius: 1,
            spreadRadius: 1)
      ]),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        controller: controller,
        style: const TextStyle(
          color: Color(0xff246f84),
        ),
        decoration: InputDecoration(
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.grey.shade400,
                width: 2,
              )),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide(
                color: Colors.grey.shade400,
                width: 1,
                style: BorderStyle.solid),
          ),
          labelText: labelText,
          labelStyle: TextStyle(
            color: Colors.grey,
            fontSize: size.width * 0.042,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide(
                color: Colors.grey.shade400,
                width: 1,
                style: BorderStyle.solid),
          ),
        ),
      ),
    );
  }
}
