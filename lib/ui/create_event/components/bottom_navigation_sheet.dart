import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fyre_stream/helper_functions/navigation_function.dart';
import 'package:fyre_stream/ui/create_post/create_post.dart';
import 'package:fyre_stream/ui/create_event/craete_event.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBottomSheetEvent extends StatefulWidget {
  const CustomBottomSheetEvent({Key? key}) : super(key: key);

  @override
  _CustomBottomSheetEventState createState() => _CustomBottomSheetEventState();
}

class _CustomBottomSheetEventState extends State<CustomBottomSheetEvent> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.55,
      width: size.width,
      padding: const EdgeInsets.only(left: 20, right: 13, top: 20),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "  Invite People",
                style: GoogleFonts.rubik(
                    color: Color(0xff0C3C5C),
                    fontSize: size.width * 0.05,
                    fontWeight: FontWeight.w700),
              ),
              IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: const Icon(Icons.keyboard_arrow_down_sharp,
                color: Colors.grey,))
            ],
          ),
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Search by name',
              hintStyle: GoogleFonts.rubik(
                color: Colors.grey,
              ),
              prefixIcon: Container(
                width: size.width * 0.01,
                height: size.width * 0.01,
                padding: EdgeInsets.all(12),
                child: SvgPicture.asset(
                  'assets/icons/search_icon1.svg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                  children: [
                 Row(
                   children: [
                     Container(
                       width: size.width * 0.13,
                       height: size.width * 0.13,
                       decoration: const BoxDecoration(
                           color: Colors.black, shape: BoxShape.circle),
                     ),
                     const SizedBox(
                       width: 10,
                     ),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text('Cole Sprouse',style: GoogleFonts.rubik(
                           color: Color(0xff0C3C5C),
                         ),),
                         Text('18- Altiana George',style: GoogleFonts.rubik(
                           color: Colors.grey,
                         ),),
                       ],
                     )
                   ],
                 ),
                    Container(
                      width: size.width*0.12,
                      height: size.width*0.12,
                      decoration: BoxDecoration(
                        color:index==0? Color(0xffFF6961):Color(0xffCDCDCD),
                        shape: BoxShape.circle,
                      ),
                      child:  Icon(index==0?Icons.check:Icons.add,
                      color: Colors.white,),
                    )
                  ],
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
