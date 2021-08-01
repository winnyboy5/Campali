import 'package:flutter/material.dart';

class CardImageObject extends StatelessWidget {
  final String? profileImage;
  final String? companyLogo;
  final double? imageSize;
  final MainAxisAlignment? alignParam;

  CardImageObject(
      {this.profileImage, this.companyLogo, this.imageSize, this.alignParam});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: alignParam!,
      children: <Widget>[
        ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              bottomLeft: Radius.circular(10.0),
            ),
            child: Container(
              color: Colors.white,
              child: Image.asset(
                companyLogo!,
                width: imageSize,
                height: imageSize,
                fit: BoxFit.cover,
              ),
            )),
        ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0),
            ),
            child: Container(
              color: Colors.white,
              child: Image.asset(
                profileImage!,
                width: imageSize,
                height: imageSize,
                fit: BoxFit.cover,
              ),
            )),
      ],
    );
  }
}
