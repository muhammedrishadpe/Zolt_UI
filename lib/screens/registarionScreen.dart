import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:zolt_ui/screens/homeScreen.dart';

import '../widgets/signupContainer.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext Context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Registation",
          style: GoogleFonts.nunito(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w800,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            MdiIcons.arrowLeft,
            size: 24,
            color: Colors.black87,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: IconButton(
                    icon: Icon(
                      MdiIcons.plus,
                      size: 50,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(
                height: 26,
              ),
              SignupContainer(
                  bioDetails: "Name",
                  obscureText: false,
                  keyboardType: TextInputType.name),
              SizedBox(
                height: 10,
              ),
              SignupContainer(
                  bioDetails: "UserName",
                  obscureText: false,
                  keyboardType: TextInputType.name),
              SizedBox(
                height: 10,
              ),
              SignupContainer(
                  bioDetails: "Email",
                  obscureText: false,
                  keyboardType: TextInputType.emailAddress),
              SizedBox(
                height: 10,
              ),
              SignupContainer(
                  bioDetails: "Phone",
                  obscureText: false,
                  keyboardType: TextInputType.number),
              SizedBox(
                height: 10,
              ),
              SignupContainer(
                  bioDetails: "Birthday",
                  obscureText: false,
                  keyboardType: TextInputType.datetime),
              SizedBox(
                height: 10,
              ),
              SignupContainer(
                  bioDetails: "Confirm",
                  obscureText: true,
                  keyboardType: TextInputType.name),
              SizedBox(
                height: 30,
              ),
              Divider(),
              Container(
                width: 500,
                height: 40,
                decoration: BoxDecoration(border: Border.all(width: 1)),
                child: TextButton(
                  child: Text(
                    "Register",
                    style: TextStyle(color: Color.fromARGB(97, 59, 31, 31)),
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
    );
  }
}
