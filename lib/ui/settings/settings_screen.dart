import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fyre_stream/helper_functions/navigation_function.dart';
import 'package:fyre_stream/ui/settings/pages/change_password.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/custom_list_tile.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
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
                        "Settings",
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
Text('Account Settings',style: GoogleFonts.rubik(
  color: Colors.grey.shade700,
  fontSize: size.width*0.043,
  letterSpacing: 0.9

),)
                ],
              ),
            ),
            SizedBox(
              height: size.height*0.02,
            ),
            CustomListTile(
              image: 'assets/icons/settings/general_info.svg',
              title: 'General Information',
              heading: 'Name, Location,Birthday',
            ),

            CustomListTile(
              image: 'assets/icons/settings/security.svg',
              title: 'Security',
              heading: 'Username, Email',
            ),

            CustomListTile(
              onTap: (){
                screenPush(context, ChangePasswordScreen());
              },
              image: 'assets/icons/settings/change_password.svg',
              title: 'Change Password',
              heading: 'Change your current password',
            ),
            CustomListTile(
              image: 'assets/icons/settings/block_contact.svg',
              title: 'Block Accounts',
              heading: 'Change Blocked Account list',
            ),

            CustomListTile(
              image: 'assets/icons/settings/privacy_settings.svg',
              title: 'Privacy Settings',
              heading: 'Change your privacy',
            ),

            Padding(
              padding: EdgeInsets.only(left: size.width*0.044,top: size.height*0.03,
              bottom: 10
              ),
              child: Text('Notifications Settings',style: GoogleFonts.rubik(
                color: Colors.grey,
                fontWeight: FontWeight.w600,
                fontSize: size.width*0.042
              ),),
            ),

            CustomListTile(
              image: 'assets/icons/settings/push_notifications.svg',
              title: 'Push Notification',
              heading: 'Handle your notifications',
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width*0.044,top: size.height*0.03,
                  bottom: 10
              ),
              child: Text('General',style: GoogleFonts.rubik(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                  fontSize: size.width*0.042
              ),),
            ),

            CustomListTile(
              image: 'assets/icons/settings/rate_out_app.svg',
              title: 'Rate Our App',
              heading: 'Rate & Review us',
            ),

            CustomListTile(
              image: 'assets/icons/settings/send_feedback.svg',
              title: 'Send Feedback',
              heading: 'Share your thought',
            ),
            CustomListTile(
              image: 'assets/icons/settings/privacy_policy.svg',
              title: 'Privacy Policy',
              heading: 'Learn about your data',
            ),

            Padding(
              padding: EdgeInsets.only(left: size.width*0.044,top: size.height*0.03,
                  bottom: 10
              ),
              child: Text('Connected App',style: GoogleFonts.rubik(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                  fontSize: size.width*0.042
              ),),
            ),
            CustomListTile(
              image: 'assets/icons/settings/connect_with_twitch.svg',
              title: 'Connect with Twitch',
              heading: 'Showcase your twich account',
            ),

            CustomListTile(
              image: 'assets/icons/settings/connect_with_fb.svg',
              title: 'Connected with Facebook',
              heading: 'Generate Loren ipsum place',
            ),
            CustomListTile(
              image: 'assets/icons/settings/connect_with_google.svg',
              title: 'Connected with Google',
              heading: 'Generate Lorem Ipsum place.',
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    ));
  }
}
