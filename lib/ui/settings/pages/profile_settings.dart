import 'package:flutter/material.dart';
import 'package:fyre_stream/ui/authentication/components/auth_button.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({Key? key}) : super(key: key);

  @override
  _ProfileSettingsState createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              margin: EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Profile Settings",
                        style: GoogleFonts.rubik(
                          color: Color(0xff0C3C5C),
                          fontWeight: FontWeight.w600,
                          fontSize: size.width * 0.055,
                          letterSpacing: 1,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'General Information',
                    style: GoogleFonts.rubik(
                      color: Colors.grey,
                      fontSize: size.width * 0.04,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    margin: EdgeInsets.only(top: size.height * 0.01),
                    width: size.width,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.shade400,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(7)),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Username",
                          hintStyle: GoogleFonts.rubik(
                              color: Colors.grey,
                              fontSize: size.width * 0.034)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    margin: EdgeInsets.only(top: size.height * 0.01),
                    width: size.width,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.shade400,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(7)),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Gender",
                          hintStyle: GoogleFonts.rubik(
                              color: Colors.grey,
                              fontSize: size.width * 0.034)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    margin: EdgeInsets.only(top: size.height * 0.01),
                    width: size.width,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.shade400,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(7)),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Looking for",
                          hintStyle: GoogleFonts.rubik(
                              color: Colors.grey,
                              fontSize: size.width * 0.034)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    margin: EdgeInsets.only(top: size.height * 0.01),
                    width: size.width,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.shade400,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(7)),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Location",
                          hintStyle: GoogleFonts.rubik(
                              color: Colors.grey,
                              fontSize: size.width * 0.034)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    margin: EdgeInsets.only(top: size.height * 0.01),
                    width: size.width,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.shade400,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(7)),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Date of Birth",
                          hintStyle: GoogleFonts.rubik(
                              color: Colors.grey,
                              fontSize: size.width * 0.034)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    margin: EdgeInsets.only(top: size.height * 0.01),
                    width: size.width,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.shade400,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(7)),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Headline",
                          hintStyle: GoogleFonts.rubik(
                              color: Colors.grey,
                              fontSize: size.width * 0.034)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    margin: EdgeInsets.only(top: size.height * 0.01),
                    width: size.width,
                    height: size.height * 0.25,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.shade400,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(7)),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "About me",
                          hintStyle: GoogleFonts.rubik(
                              color: Colors.grey,
                              fontSize: size.width * 0.034)),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  AuthButton(
                    onPressed: () {},
                    label: 'Update',
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
