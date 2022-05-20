// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class detailsContainer extends StatelessWidget {
  String title;
  detailsContainer(this.title);

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
              color: Colors.white,
              offset: const Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ),
          ],
          border: Border.all(width: 2, color: Colors.black),
        ),
        child: TextButton(
          onPressed: () {},
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
            ],
          ),
        ));
  }
}
