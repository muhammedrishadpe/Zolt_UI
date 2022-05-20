// ignore_for_file: prefer_const_constructors

import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/material.dart';
import 'package:zolt_ui/widgets/imageContainer.dart';

class ImageSlider extends StatefulWidget {
  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int pageIndex = 0;

  List<Widget> _demo = [
    // ImageContainer(img: 'assets/images/greenw.png'),
    ImageContainer(img: 'assets/images/brooom.jpg'),
    ImageContainer(img: 'assets/images/city.jpg'),
    ImageContainer(img: 'assets/images/art.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 20),
          height: 160,
          width: 317,
          decoration: BoxDecoration(
            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 19, 19, 19),
                spreadRadius: 5,
                blurRadius: 0,
                offset: Offset(6.0, 6.0),
              )
            ],
            border: Border(
              top: BorderSide(width: 3.0, color: Color.fromARGB(255, 3, 3, 3)),
              left: BorderSide(width: 3.0, color: Color.fromARGB(255, 0, 0, 0)),
            ),
          ),
          child: PageView(
            children: _demo,
            onPageChanged: (index) {
              setState(() {
                pageIndex = index;
              });
            },
          ),
        ),
        SizedBox(
          height: 13,
        ),
        CarouselIndicator(
          count: _demo.length,
          index: pageIndex,
          color: Color.fromARGB(221, 255, 255, 255),
          width: 30,
          height: 4,
          animationDuration: 200,
          activeColor: Colors.black54,
        ),
      ],
    );
  }
}
