import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fyre_stream/helper_functions/navigation_function.dart';

import 'detail_screen.dart';

class DatingScreen extends StatefulWidget {
  const DatingScreen({Key? key}) : super(key: key);

  @override
  _DatingScreenState createState() => _DatingScreenState();
}

class _DatingScreenState extends State<DatingScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: size.height * 0.04),
            width: size.width * 0.8,
            height: size.height * 0.58,
            decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage('assets/images/dating_pic.png'),
                    fit: BoxFit.fill)),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(12),
                width: size.width * 0.14,
                height: size.width * 0.14,
                decoration: const BoxDecoration(
                    color: Color(0xff32C0AA), shape: BoxShape.circle),
                child: SvgPicture.asset('assets/icons/cross_icon.svg'),
              ),
              SizedBox(
                width: size.width * 0.04,
              ),
              InkWell(
                onTap: (){
                  screenPush(context, DatingDetail());
                },
                child: Container(
                  padding: EdgeInsets.all(17),
                  width: size.width * 0.14,
                  height: size.width * 0.14,
                  decoration: const BoxDecoration(
                      color: Color(0xffFF6961), shape: BoxShape.circle),
                  child: SvgPicture.asset('assets/icons/tick_icon.svg'),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
