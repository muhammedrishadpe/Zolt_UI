import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './hexColor.dart';

class ButtonContainer extends StatelessWidget {
  const ButtonContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(
                hexColor('#B1D0FF'),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 19, 19, 19),
                  spreadRadius: 5,
                  blurRadius: 0,
                  offset: Offset(6.0, 6.0),
                )
              ],
              border: Border(
                top:
                    BorderSide(width: 2.0, color: Color.fromARGB(255, 3, 3, 3)),
                left:
                    BorderSide(width: 2.0, color: Color.fromARGB(255, 0, 0, 0)),
              ),
            ),
            width: 144.0,
            height: 130.0,
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "SEND",
                    style: GoogleFonts.nunito(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_upward_outlined),
                    iconSize: 50,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(
                hexColor('#CA9EFA'),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 19, 19, 19),
                  spreadRadius: 5,
                  blurRadius: 0,
                  offset: Offset(6.0, 6.0),
                )
              ],
              border: Border(
                top:
                    BorderSide(width: 2.0, color: Color.fromARGB(255, 3, 3, 3)),
                left:
                    BorderSide(width: 2.0, color: Color.fromARGB(255, 0, 0, 0)),
              ),
            ),
            width: 144.0,
            height: 130.0,
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "RECEVE",
                    style: GoogleFonts.nunito(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_downward_outlined),
                    iconSize: 50,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
