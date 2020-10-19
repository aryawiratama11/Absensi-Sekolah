import 'package:absensi_sekolah/components/list_container.dart';
import 'package:absensi_sekolah/components/rounded_profile_button_v2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:absensi_sekolah/utilities/constants.dart';

class Dashboardv2 extends StatefulWidget {
  @override
  _Dashboardv2State createState() => _Dashboardv2State();
}

class _Dashboardv2State extends State<Dashboardv2> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: lightColor,
        body: Stack(children: [
          Positioned(
            top: 0,
            left: 0,
            child: SvgPicture.asset("assets/images/sun.svg"),
          ),
          Positioned(
              top: size.height * 0.18,
              left: -2,
              child: SvgPicture.asset("assets/images/house.svg")),
          RoundedProfileButtonV2(
              image: AssetImage("assets/images/ig.png"),
              name: "Hafid",
              status: "Status",
              onTap: () {}),
          ListContainer()
        ]));
  }
}
