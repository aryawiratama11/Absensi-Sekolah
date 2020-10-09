import 'package:absensi_sekolah/utilities/constants.dart';
import 'package:flutter/material.dart';

class Back extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Material(
          borderRadius: BorderRadius.circular(30),
          child: Container(
            width: size.width * 0.15,
            height: size.height * 0.07,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: primaryColor),
            child: Material(
              borderRadius: BorderRadius.circular(30),
              color: Colors.transparent,
              child: InkWell(
                  splashColor: darkColor,
                  onTap: () {},
                  borderRadius: BorderRadius.circular(30),
                  child: Icon(
                    Icons.navigate_before,
                    color: Colors.white,
                  )),
            ),
          ),
        ),
      ],
    );
  }
}
