import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fyre_stream/styles/colors.dart';
import 'package:fyre_stream/ui/add_screen/add_screen.dart';
import 'package:fyre_stream/ui/compass_screen/compass_screen.dart';
import 'package:fyre_stream/ui/home_screen/home_screen.dart';
import 'package:fyre_stream/ui/notification_screen/notificatoin_screen.dart';
import 'package:fyre_stream/ui/profile_screen/profile_screen.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarState createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<CustomBottomNavigationBar> {
  final List<Widget> _listOfWidgets = [
    const HomeScreen(),
    const CompassScreen(),
    const AddScreen(),
    const NotificationScreen(),
    const ProfileScreen(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: _listOfWidgets.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        currentIndex: currentIndex,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              title: const Text('home'),
              icon: SvgPicture.asset('assets/icons/home_icon.svg',
              color: currentIndex == 0?primaryColor:Colors.grey,
              )),
          BottomNavigationBarItem(
              title: const Text('home'),
              icon: SvgPicture.asset('assets/icons/compass_icon.svg',
              color: currentIndex == 1?primaryColor:Colors.grey,
              )),
          BottomNavigationBarItem(
              title: const Text('home'),
              icon: SvgPicture.asset('assets/icons/add_icon.svg',
              color: currentIndex == 2?primaryColor:Colors.grey,
              )),
          BottomNavigationBarItem(
              title: const Text('home'),
              icon: SvgPicture.asset('assets/icons/bell_icon.svg',
              color: currentIndex == 3?primaryColor:Colors.grey,
              )),
          BottomNavigationBarItem(
              title: const Text('home'),
              icon: Container(
                width: size.width * 0.07,
                height: size.width * 0.07,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/picture.jpg')),
                ),
              ))
        ],
      ),
    );
  }
}
