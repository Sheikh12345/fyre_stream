import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fyre_stream/helper_functions/navigation_function.dart';
import 'package:fyre_stream/ui/authentication/components/auth_button.dart';
import 'package:google_fonts/google_fonts.dart';

import 'create_event2.dart';

class CreateEvent extends StatefulWidget {
  const CreateEvent({Key? key}) : super(key: key);

  @override
  _CreateEventState createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
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
                        'Event Media',
                        style: GoogleFonts.rubik(
                            color: Colors.black,
                            fontSize: size.width * 0.046,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Add Photo/Video",
              style: GoogleFonts.rubik(
                color: Colors.black,
                fontSize: size.width * 0.042,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: size.width * 0.4,
                      childAspectRatio: 0.8,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    if (index == 2) {
                      return InkWell(
                        onTap: (){
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('it will work in implementation phase')));
                        },
                        child: Container(
                          width: size.width,
                          height: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: size.width,
                                height: 200,
                                child: SvgPicture.asset(
                                    'assets/icons/rectangle_square.svg'),
                              ),
                              Container(
                                width: size.width * 0.18,
                                height: size.width * 0.18,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffFF6961),
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: size.width * 0.07,
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }
                    return Container(
                      width: size.width,
                      height: 200,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image:
                                  AssetImage('assets/images/image_media.png'))),
                    );
                  }),
            ),
          ],
        ),
      ),
          bottomNavigationBar: Container(
            height: size.height*0.075,
           margin: EdgeInsets.only(bottom: size.height*0.02),
            child: AuthButton(
              label: 'Next',
              onPressed: (){
                screenPush(context,const CreateEvent2());
              },
            ),
          ),
    ),
    );
  }
}
