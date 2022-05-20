import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupContainer extends StatelessWidget {
  String bioDetails;
  bool obscureText;
  TextInputType keyboardType;

  SignupContainer(
      {required this.bioDetails,
      required this.obscureText,
      required this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 60,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 1.5, color: Colors.black),
          left: BorderSide(width: 1.5, color: Colors.black),
          right: BorderSide(width: 7, color: Colors.black),
          bottom: BorderSide(width: 7, color: Colors.black),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 110,
            height: 55,
            padding: EdgeInsets.all(15),
            decoration:
                BoxDecoration(border: Border(right: BorderSide(width: 5))),
            child: Text(
              bioDetails,
              style: GoogleFonts.nunito(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Flexible(
            child: TextField(
              keyboardType: keyboardType,
              autofocus: true,
              obscureText: obscureText,
              decoration: InputDecoration(
                  border: InputBorder.none, contentPadding: EdgeInsets.all(20)),
            ),
          ),
        ],
      ),
    );
  }
}
