import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/auth_button.dart';
import 'components/custom_textfield.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
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
                height: size.height * 0.06,
              ),
              Text(
                'Password Reset',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: const Color(0xff365b6a),
                  fontSize: size.width * 0.065,
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Text(
                'Enter your associated email address. you will\n '
                'receive a link to create a new password',
                style: TextStyle(
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              CustomTextField(
                labelText: 'Email',
                controller: _controllerEmail,
              ),
              SizedBox(
                height: size.width * 0.055,
              ),
              AuthButton(
                label: 'Send',
                onPressed: () {},
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20, top: size.height * 0.06),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Back to",
                      style: TextStyle(
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.w600,
                          fontSize: size.width * 0.035),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w700,
                            fontSize: size.width * 0.0355),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
