import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:zolt_ui/screens/homePage.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
          child: Column(
        children: <Widget>[
          ListTile(
            leading: TextButton.icon(
              icon: Icon(
                MdiIcons.close,
                size: 30,
                color: Colors.black,
              ),
              label: Text(
                "Sidemenu",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w800),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text(
              '',
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            height: 100,
          ),
          SideMenu(
            icon: Icons.favorite,
            title: "Favourite",
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          SizedBox(
            height: 15,
          ),
          SideMenu(
            icon: Icons.wallet_giftcard,
            title: "My Order",
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          SizedBox(
            height: 15,
          ),
          SideMenu(
            icon: MdiIcons.human,
            title: "Profile",
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          SizedBox(
            height: 15,
          ),
          SideMenu(
            icon: Icons.card_membership,
            title: "My Cards",
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          SizedBox(
            height: 15,
          ),
          SideMenu(
            icon: Icons.location_city,
            title: "Address",
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          SizedBox(
            height: 15,
          ),
          SideMenu(
            icon: Icons.settings,
            title: "Settings",
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          SizedBox(
            height: 15,
          ),
          SideMenu(
            icon: Icons.outbond,
            title: "Logout",
            onPressed: () {
              return showDialog<void>(
                context: context,
                barrierDismissible: false, // user must tap button!
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Logout'),
                    content: SingleChildScrollView(
                      child: ListBody(
                        children: const <Widget>[
                          Text('Would you like to approve of this message?'),
                        ],
                      ),
                    ),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('Approve'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                      ),
                    ],
                  );
                },
              );
              ;
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => HomePage()),
              // );
            },
          ),
        ],
      )),
    );
  }
}

class SideMenu extends StatelessWidget {
  SideMenu({required this.title, required this.icon, required this.onPressed});
  String title;
  IconData icon;
  Function() onPressed;

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
            onPressed: onPressed,
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

showAlertDialog(BuildContext context) {
  // set up the buttons
  Widget cancelButton = TextButton(
    child: Text("Cancel"),
    onPressed: () {},
  );
  Widget continueButton = TextButton(
    child: Text("Continue"),
    onPressed: () {},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("AlertDialog"),
    content:
        Text("Would you like to continue learning how to use Flutter alerts?"),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
