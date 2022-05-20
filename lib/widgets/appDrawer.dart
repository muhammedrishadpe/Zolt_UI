import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
          child: Column(
        children: <Widget>[
          SizedBox(
            height: 100,
          ),
          SideMenu(
            icon: Icons.favorite,
            title: "Favourite",
          ),
          SizedBox(
            height: 15,
          ),
          SideMenu(
            icon: Icons.wallet_giftcard,
            title: "My Order",
          ),
          SizedBox(
            height: 15,
          ),
          SideMenu(
            icon: MdiIcons.human,
            title: "Profile",
          ),
          SizedBox(
            height: 15,
          ),
          SideMenu(
            icon: Icons.card_membership,
            title: "My Cards",
          ),
          SizedBox(
            height: 15,
          ),
          SideMenu(
            icon: Icons.location_city,
            title: "Address",
          ),
          SizedBox(
            height: 15,
          ),
          SideMenu(
            icon: Icons.settings,
            title: "Settings",
          ),
          SizedBox(
            height: 15,
          ),
          SideMenu(
            icon: Icons.outbond,
            title: "Logout",
          ),
        ],
      )),
    );
  }
}

class SideMenu extends StatelessWidget {
  SideMenu({required this.title, required this.icon});
  String title;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
          width: 280,
          height: 60,
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
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  icon,
                  color: Colors.black87,
                ),
                SizedBox(width: 10),
                Text(
                  title,
                  style: GoogleFonts.nunito(
                    color: Colors.black,
                    fontSize: 19,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
