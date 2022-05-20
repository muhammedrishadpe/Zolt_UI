// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:zolt_ui/widgets/buttonContainer.dart';
import 'package:zolt_ui/widgets/detailsContainer.dart';
import 'package:zolt_ui/widgets/imageSlider.dart';

import '../widgets/appDrawer.dart';
import '../widgets/hexColor.dart';

class HomeScreen extends StatelessWidget {
  static const IconData arrow_upward =
      IconData(0xe0a0, fontFamily: 'MaterialIcons');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Zolt",
          style: GoogleFonts.nunito(
            color: Colors.black87,
            fontSize: 25,
            fontWeight: FontWeight.w800,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: Icon(
                MdiIcons.menu,
                color: Colors.black87,
              ),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
          ),
        ],
      ),
      endDrawer: AppDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello",
                style: GoogleFonts.nunito(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                "Maria!",
                style: GoogleFonts.nunito(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                ),
              ),
              ImageSlider(),
              SizedBox(
                height: 20,
              ),
              ButtonContainer(),
              SizedBox(
                height: 20,
              ),
              detailsContainer("Balance"),
              SizedBox(
                height: 10,
              ),
              detailsContainer("Shopping"),
              SizedBox(
                height: 10,
              ),
              detailsContainer("Transactions"),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
