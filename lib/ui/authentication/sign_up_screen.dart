import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fyre_stream/helper_functions/navigation_function.dart';
import 'package:fyre_stream/ui/authentication/login_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/auth_button.dart';
import 'components/custom_textfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  final TextEditingController _controllerConPassword = TextEditingController();

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
          body: Container(
            width: size.width,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  RichText(
                    text: TextSpan(
                        text: 'fy',
                        children: [
                          TextSpan(
                              text: 're',
                              children: [],
                              style: GoogleFonts.courgette(
                                color: Color(0xfffa3200),
                              )),
                          TextSpan(
                              text: ' stream',
                              children: [],
                              style: GoogleFonts.courgette(
                                  color: const Color(0xfff08081),
                                  fontWeight: FontWeight.w100)),
                        ],
                        style: GoogleFonts.courgette(
                            color: const Color(0xff00a6c6), fontSize: size.width * 0.11)),
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Text(
                    'Create Account',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: const Color(0xff365b6a),
                      fontSize: size.width * 0.065,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  CustomTextField(
                    labelText: 'Email',
                    controller: _controllerEmail,
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  CustomTextField(
                    labelText: 'Password',
                    controller: _controllerPassword,
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  CustomTextField(
                    labelText: 'Confirm Password',
                    controller: _controllerConPassword,
                  ),
                  SizedBox(
                    height: size.height * 0.016,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      children: [
                        Theme(
                          data: ThemeData(
                            unselectedWidgetColor: Colors.grey.shade300,
                          ),
                          child: Checkbox(
                            value: isChecked,
                            onChanged: (value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                            activeColor: Color(0xff4e7b92),
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                              text: 'I',
                              children: const [
                                TextSpan(
                                    text: ' agree to ',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    )),
                                TextSpan(
                                    text: ' Terms',
                                    style: TextStyle(
                                        color: Color(0xff00a6c6),
                                        fontWeight: FontWeight.w600)),
                                TextSpan(
                                    text: ' & ',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    )),
                                TextSpan(
                                    text: ' Privacy Policy ',
                                    style: TextStyle(
                                        color: Color(0xff00a6c6),
                                        fontWeight: FontWeight.w600)),
                              ],
                              style: TextStyle(
                                  color: Colors.grey, fontSize: size.width * 0.03)),
                        ),
                      ],
                    ),
                  ),
                   SizedBox(
                    height: size.height*0.03,
                  ),
                  AuthButton(
                    label: 'Sign Up',
                    onPressed: (){},
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Text(
                    'OR',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w700,
                      fontSize: size.width * 0.04,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.03),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: size.width * 0.08,
                          child: SvgPicture.asset('assets/logo/google_logo.svg'),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Continue with Google',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: size.width * 0.04),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          bottomNavigationBar: Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: InkWell(
              onTap: (){
                screenPush(context,const LoginScreen());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.w600,
                        fontSize: size.width * 0.035),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Sign In",
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w700,
                        fontSize: size.width * 0.037),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
