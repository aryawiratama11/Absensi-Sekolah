import 'package:absensi_sekolah/components/rounded_profile_button_v2.dart';
import 'package:absensi_sekolah/components/rounded_filter_button_v2.dart';
import 'package:absensi_sekolah/components/rounded_selection_button_v2.dart';

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
              left: -2,
              top: size.height * 0.18,
              child: SvgPicture.asset("assets/images/house.svg")),
          RoundedProfileButtonV2(
            onTap: () {},
            name: "Hafid",
            status: "Status",
            image: AssetImage("assets/images/ig.png"),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxHeight > 600) {
                return Container(
                    width: double.infinity,
                    height: size.height * 0.5,
                    padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                    decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: SingleChildScrollView(
                        child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Pengumuman",
                            style: TextStyle(
                              fontSize: 20,
                              color: blackColor,
                              fontFamily: "Poppins-Medium",
                            ),
                          ),
                          RoundedFilterButtonV2(
                            fontSize: 16,
                            height: 0.05,
                            width: 0.24,
                            iconSize: 24,
                            onTap: () {},
                          )
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.015,
                      ),
                      RoundedSelectionButtonV2(
                        title: "Pengumumanaaaaaaaaaaa",
                        desc: "aaaaaaaaaaaaaaaaaaaaaaaaa",
                        fontSize: 18,
                        iconButtonSize: 50,
                        iconSize: 24,
                        onTap: () {},
                      ),
                      RoundedSelectionButtonV2(
                        title: "Pengumumanaaaaaaaaaaa",
                        desc: "aaaaaaaaaaaaaaaaaaaaaaaaa",
                        fontSize: 18,
                        iconButtonSize: 50,
                        iconSize: 24,
                        onTap: () {},
                      ),
                      RoundedSelectionButtonV2(
                        title: "Pengumumanaaaaaaaaaaa",
                        desc: "aaaaaaaaaaaaaaaaaaaaaaaaa",
                        fontSize: 18,
                        iconButtonSize: 50,
                        iconSize: 24,
                        onTap: () {},
                      ),
                      RoundedSelectionButtonV2(
                        title: "Pengumumanaaaaaaaaaaa",
                        desc: "aaaaaaaaaaaaaaaaaaaaaaaaa",
                        fontSize: 18,
                        iconButtonSize: 50,
                        iconSize: 24,
                        onTap: () {},
                      ),
                      RoundedSelectionButtonV2(
                        title: "Pengumumanaaaaaaaaaaa",
                        desc: "aaaaaaaaaaaaaaaaaaaaaaaaa",
                        fontSize: 18,
                        iconButtonSize: 50,
                        iconSize: 24,
                        onTap: () {},
                      ),
                      RoundedSelectionButtonV2(
                        title: "Pengumumanaaaaaaaaaaa",
                        desc: "aaaaaaaaaaaaaaaaaaaaaaaaa",
                        fontSize: 18,
                        iconButtonSize: 50,
                        iconSize: 24,
                        onTap: () {},
                      ),
                    ])));
              } else {
                return Container(
                    height: 300,
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 15, right: 15, top: 15),
                    decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: SingleChildScrollView(
                        child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Pengumuman",
                            style: TextStyle(
                              fontSize: 18,
                              color: blackColor,
                              fontFamily: "Poppins-Medium",
                            ),
                          ),
                          RoundedFilterButtonV2(
                            fontSize: 14,
                            height: 0.04,
                            width: 0.20,
                            iconSize: 20,
                            onTap: () {},
                          )
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.015,
                      ),
                      RoundedSelectionButtonV2(
                        title: "Pengumumanaaaaaaaaaaa",
                        desc: "aaaaaaaaaaaaaaaaaaaaaaaaa",
                        fontSize: 16,
                        iconButtonSize: 40,
                        iconSize: 20,
                        onTap: () {},
                      ),
                      RoundedSelectionButtonV2(
                        title: "Pengumumanaaaaaaaaaaa",
                        desc: "aaaaaaaaaaaaaaaaaaaaaaaaa",
                        fontSize: 16,
                        iconButtonSize: 40,
                        iconSize: 20,
                        onTap: () {},
                      ),
                      RoundedSelectionButtonV2(
                        title: "Pengumumanaaaaaaaaaaa",
                        desc: "aaaaaaaaaaaaaaaaaaaaaaaaa",
                        fontSize: 16,
                        iconButtonSize: 40,
                        iconSize: 20,
                        onTap: () {},
                      ),
                      RoundedSelectionButtonV2(
                        title: "Pengumumanaaaaaaaaaaa",
                        desc: "aaaaaaaaaaaaaaaaaaaaaaaaa",
                        fontSize: 16,
                        iconButtonSize: 40,
                        iconSize: 20,
                        onTap: () {},
                      ),
                      RoundedSelectionButtonV2(
                        title: "Pengumumanaaaaaaaaaaa",
                        desc: "aaaaaaaaaaaaaaaaaaaaaaaaa",
                        fontSize: 16,
                        iconButtonSize: 40,
                        iconSize: 20,
                        onTap: () {},
                      ),
                      RoundedSelectionButtonV2(
                        title: "Pengumumanaaaaaaaaaaa",
                        desc: "aaaaaaaaaaaaaaaaaaaaaaaaa",
                        fontSize: 16,
                        iconButtonSize: 40,
                        iconSize: 20,
                        onTap: () {},
                      ),
                    ])));
              }
            }),
          ),
        ]));
  }
}
