import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:zolt_ui/screens/registarionScreen.dart';
import 'package:zolt_ui/widgets/signupContainer.dart';

import 'homeScreen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            "Login",
            style: GoogleFonts.nunito(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w800,
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              MdiIcons.arrowLeft,
              size: 23,
            ),
            color: Colors.black87,
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      "assets/images/splashScreen.png",
                      width: 150,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SignUpContainer(bioDetails: "Name", obscureText: false),
                  SizedBox(
                    height: 7,
                  ),
                  SignUpContainer(bioDetails: "PassWord", obscureText: true),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "OR",
                    style: GoogleFonts.nunito(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SignUpContainer(bioDetails: "Phone", obscureText: false),
                  SizedBox(
                    height: 7,
                  ),
                  SignUpContainer(bioDetails: "OTP", obscureText: true),
                  SizedBox(
                    height: 25,
                  ),
                  Divider(),
                  Container(
                    width: 300,
                    height: 80,
                    decoration: BoxDecoration(border: Border.all(width: 1)),
                    child: TextButton(
                      child: Text(
                        "Login",
                        style: GoogleFonts.nunito(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
