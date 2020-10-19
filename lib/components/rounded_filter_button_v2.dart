import 'package:flutter/material.dart';
import 'package:absensi_sekolah/utilities/constants.dart';

class RoundedFilterButtonV2 extends StatelessWidget {
  final double width;
  final double height;
  final Function onTap;
  final double fontSize;
  final double iconSize;

  RoundedFilterButtonV2({
    Key key,
    this.width,
    this.onTap,
    this.height,
    this.fontSize,
    this.iconSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Material(
      color: superLightColor,
      borderRadius: BorderRadius.circular(30),
      child: InkWell(
        onTap: onTap,
        splashColor: primaryColor,
        borderRadius: BorderRadius.circular(30),
        child: Container(
          width: size.width * width,
          height: size.height * height,
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.filter_list, color: primaryColor, size: iconSize),
              Text(
                "Filter",
                style: TextStyle(
                  fontSize: fontSize,
                  color: blackColor,
                  fontFamily: "Poppins-Medium",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
