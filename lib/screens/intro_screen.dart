import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:absensi_sekolah/utilities/constants.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(
          child: Text(
            "Absensi Siswa",
            style: TextStyle(
              fontFamily: "Poppins-Bold",
              color: primaryColor,
              fontSize: 32,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.1,
          ),
          Center(
            child: Text(
              "Absensi Siswa",
              style: TextStyle(
                fontFamily: "Poppins-Bold",
                color: primaryColor,
                fontSize: 32,
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.1,
          ),
          SvgPicture.asset(
            "assets/images/intro.svg",
            width: size.width * 0.9,
          ),
        ],
      ),
    );
  }
}
