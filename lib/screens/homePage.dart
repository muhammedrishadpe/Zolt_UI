import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:zolt_ui/screens/loginPage.dart';
import 'package:zolt_ui/screens/registarionScreen.dart';

class HomePage extends StatelessWidget {
  build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  ClipRRect(
                    child: Image.asset(
                      "assets/images/splashScreen.png",
                      width: 250,
                      height: 250,
                    ),
                  ),
                  SizedBox(
                    height: 150,
                  ),
                  RegButtonHomePage(
                    title: "Login",
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RegButtonHomePage(
                      title: "Registration",
                      onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegistrationScreen()),
                          )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class RegButtonHomePage extends StatelessWidget {
  RegButtonHomePage({required this.title, required this.onPressed});

  String title;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 330,
        height: 80,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 0, 0, 0),
              offset: const Offset(
                3.5,
                3.0,
              ),
              blurRadius: 0.0,
              spreadRadius: 2.7,
            ),
            BoxShadow(
              color: Color.fromARGB(255, 237, 237, 237),
              offset: const Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ),
          ],
          border: Border.all(width: 2, color: Colors.black),
        ),
        child: TextButton(
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                title,
                style: GoogleFonts.nunito(
                  color: Colors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                width: 140,
              ),
              Icon(MdiIcons.arrowRight, color: Colors.black),
            ],
          ),
        ));
  }
}
