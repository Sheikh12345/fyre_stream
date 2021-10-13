import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fyre_stream/helper_functions/navigation_function.dart';
import 'package:fyre_stream/ui/authentication/components/auth_button.dart';
import 'package:fyre_stream/ui/create_event/components/bottom_navigation_sheet.dart';
import 'package:google_fonts/google_fonts.dart';

import 'create_event_ready.dart';

class CreateEvent2 extends StatefulWidget {
  const CreateEvent2({Key? key}) : super(key: key);

  @override
  _CreateEvent2State createState() => _CreateEvent2State();
}

class _CreateEvent2State extends State<CreateEvent2> {
  bool switchValue = false;

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
                          'Create Event',
                          style: GoogleFonts.rubik(
                              color: Colors.black,
                              fontSize: size.width * 0.046,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Text(
                      'Submit',
                      style: GoogleFonts.rubik(
                          color: Colors.red, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.only(left: 15),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Event Name',
                    hintStyle: GoogleFonts.rubik(
                        color: Colors.grey.shade600,
                        fontSize: size.width * 0.045),
                    border: InputBorder.none,
                  ),
                ),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade500, width: 1),
                    borderRadius: BorderRadius.circular(5)),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.only(left: 15),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Date & Time',
                    hintStyle: GoogleFonts.rubik(
                        color: Colors.grey.shade600,
                        fontSize: size.width * 0.045),
                    suffixIcon: Container(
                        margin: EdgeInsets.all(10),
                        child: SvgPicture.asset('assets/icons/event_icon.svg')),
                    border: InputBorder.none,
                  ),
                ),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade500, width: 1),
                    borderRadius: BorderRadius.circular(5)),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.only(left: 15),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Location',
                    hintStyle: GoogleFonts.rubik(
                        color: Colors.grey.shade600,
                        fontSize: size.width * 0.045),
                    suffixIcon: Container(
                        margin: EdgeInsets.all(10),
                        child: SvgPicture.asset(
                            'assets/icons/location_event.svg')),
                    border: InputBorder.none,
                  ),
                ),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade500, width: 1),
                    borderRadius: BorderRadius.circular(5)),
              ),
              Container(
                height: size.height * 0.17,
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.only(left: 15),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Short Description',
                    hintStyle: GoogleFonts.rubik(
                        color: Colors.grey.shade600,
                        fontSize: size.width * 0.045),
                    border: InputBorder.none,
                  ),
                ),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade500, width: 1),
                    borderRadius: BorderRadius.circular(5)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Event is free',
                    style: GoogleFonts.rubik(
                        color: Colors.grey.shade600,
                        fontSize: size.width * 0.046),
                  ),
                  Switch(
                    value: switchValue,
                    onChanged: (value) {
                      setState(() {
                        switchValue = value;
                      });
                    },
                    activeColor: Colors.red,
                  ),
                ],
              ),
              Text(
                "Invite People",
                style: GoogleFonts.rubik(
                    color: const Color(0xff0C3C5C),
                    fontSize: size.width * 0.045,
                    fontWeight: FontWeight.w500),
              ),
              Container(
                height: size.height * 0.1,
                width: size.width,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return InkWell(
                          onTap: (){
                            showSheet(context);
                          },
                          child: Container(
                            width: size.width * 0.15,
                            height: size.width * 0.15,
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            decoration: const BoxDecoration(
                                color: Color(0xffFF6961), shape: BoxShape.circle),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        );
                      }
                      return Container(
                        width: size.width * 0.15,
                        height: size.width * 0.15,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: const BoxDecoration(
                            color: Color(0xffFF6961),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/image_media.png'))),
                      );
                    }),
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: size.height * 0.075,
          margin: EdgeInsets.only(bottom: size.height * 0.02),
          child: AuthButton(
            label: 'Next',
            onPressed: () {
         screenPush(context, CreateEventReady());
            },
          ),
        ),
      ),
    );
  }

  showSheet(BuildContext context) {
    return showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(26),
          ),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        context: context,
        builder: (context) => const CustomBottomSheetEvent());
  }
}
