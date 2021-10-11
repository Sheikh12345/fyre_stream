import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fyre_stream/ui/authentication/components/auth_button.dart';
import 'package:google_fonts/google_fonts.dart';

class DatingDetail extends StatefulWidget {
  const DatingDetail({Key? key}) : super(key: key);

  @override
  _DatingDetailState createState() => _DatingDetailState();
}

class _DatingDetailState extends State<DatingDetail> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: Container(
        width: size.width,
        child: Column(
          children: [
            SizedBox(
              height: size.height*0.05,
            ),
            Text(
              'It\'s a Match',
              style: GoogleFonts.rubik(
                color: const Color(0xff0C3C5C),
                fontSize: size.width*0.07,
                fontWeight: FontWeight.w600
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: size.height*0.04),
              width: size.width * 0.8,
              child: Text(
                  "You and Angela have liked each other and you can now send her a message using your phone",
              style: GoogleFonts.rubik(
                color: Color(0xff90949C),
                  fontSize: size.width*0.042,
                  fontWeight: FontWeight.w600
              ),
                textAlign: TextAlign.center,
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: size.height*0.06,right: size.width*0.05),
              width: size.width,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Row(
mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: size.width*0.4,
                        height: size.height*0.32,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        width: size.width*0.4,
                        height: size.height*0.32,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image:  AssetImage('assets/images/dating_pic2.png'),
                            fit: BoxFit.fill
                          )
                        ),
                      )
                    ],
                  ),
                  Container(
                 child: SvgPicture.asset('assets/icons/heart.svg'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
          bottomNavigationBar: Container(
            height: size.height*0.17,
            child: Column(
              children: [
                AuthButton(
                  onPressed: (){}, label: 'Text Angela',
                ),
                Container(
                  margin: EdgeInsets.only(top: size.height*0.028),
                  child: Text("Continue your search",style: GoogleFonts.rubik(
                    color: Colors.grey.shade600,
                    fontSize: size.width*0.045,
                  ),),
                )
              ],
            ),
          ),
    ));
  }
}
