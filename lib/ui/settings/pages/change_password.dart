import 'package:flutter/material.dart';
import 'package:fyre_stream/ui/authentication/components/auth_button.dart';
import 'package:fyre_stream/ui/settings/components/custom_list_tile.dart';
import 'package:google_fonts/google_fonts.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      ),
                      Text(
                        "Change Password",
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
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin:EdgeInsets.symmetric(vertical: size.height*0.01),
                    padding: EdgeInsets.only(left: size.width*0.04),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Old Password*',
                        hintStyle: GoogleFonts.rubik(
                          color: Colors.grey,
                          fontSize: size.width*0.036
                        )
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8)
                    ),
                  ),
                  Container(
                    margin:EdgeInsets.symmetric(vertical: size.height*0.01),

                    padding: EdgeInsets.only(left: size.width*0.04),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'New Password*',
                          hintStyle: GoogleFonts.rubik(
                              color: Colors.grey,
                              fontSize: size.width*0.036
                          )
                      ),
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8)
                    ),
                  ),
                  Container(
                    margin:EdgeInsets.symmetric(vertical: size.height*0.01),

                    padding: EdgeInsets.only(left: size.width*0.04),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Confirm Password*',
                          hintStyle: GoogleFonts.rubik(
                              color: Colors.grey,
                              fontSize: size.width*0.036
                          )
                      ),
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8)
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height*0.05,
            ),
            AuthButton(onPressed: (){}, label: 'Update Password')
          ],
        ),
      ),
    ));
  }
}
