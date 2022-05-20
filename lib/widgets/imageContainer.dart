import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  String img;
  ImageContainer({required this.img});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        img,
        fit: BoxFit.fill,
      ),
    );
  }
}
