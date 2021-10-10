import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fyre_stream/helper_functions/navigation_function.dart';
import 'package:fyre_stream/ui/authentication/sign_up_screen.dart';
import 'package:fyre_stream/ui/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:fyre_stream/ui/home_screen/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/auth_button.dart';
import 'components/custom_textfield.dart';
import 'forgot_password_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
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
                        color: const Color(0xff00a6c6),
                        fontSize: size.width * 0.11)),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Text(
                'Welcom Back',
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
                height: size.height * 0.016,
              ),
              Container(
                margin: EdgeInsets.only(left: 8, right: 19),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
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
                            activeColor: const Color(0xff4e7b92),
                          ),
                        ),
                        Text(
                          'Remember me?',
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: size.width * 0.034,
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ForgotPasswordScreen()));
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: size.width * 0.034,
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: size.width * 0.038,
              ),
              Hero(
                tag: 'login',
                child: AuthButton(
                  label: 'Sign In',
                  onPressed: () {
                    screenPush(context, const CustomBottomNavigationBar());
                  },
                ),
              ),
              SizedBox(
                height: size.height * 0.033,
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
                margin: EdgeInsets.only(top: size.height * 0.05),
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
      bottomNavigationBar: InkWell(
        onTap: () {
          screenPush(context, const SignUpScreen());
        },
        child: Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "New user?",
                style: TextStyle(
                    color: Colors.grey.shade500,
                    fontWeight: FontWeight.w600,
                    fontSize: size.width * 0.035),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Sign Up",
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
