import 'package:absensi_sekolah/components/rounded_input_field.dart';
import 'package:absensi_sekolah/components/rounded_filter_button.dart';
import 'package:absensi_sekolah/components/rounded_selection_button.dart';

import 'package:absensi_sekolah/utilities/layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:absensi_sekolah/utilities/constants.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
        backgroundColor: lightColor,
        resizeToAvoidBottomInset: false,
        body: Stack(children: [
          Positioned(
            top: 0,
            left: 0,
            child: SvgPicture.asset("assets/images/sun.svg"),
          ),
          Positioned(
              left: -10,
              top: 80,
              child: SvgPicture.asset("assets/images/house.svg")),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: SizeConfig.blockVertical * 50,
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: SingleChildScrollView(
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Daftar Sekolah",
                        style: TextStyle(
                          fontSize: SizeConfig.blockVertical * 2.2,
                          color: blackColor,
                          fontFamily: "Poppins-Medium",
                        ),
                      ),
                    ],
                  ),
                  RoundedSelectionButton(
                    title: "Pengumuman",
                    desc: "24 Oct 20",
                    icon: Icons.file_copy,
                    onTap: () {},
                  ),
                  RoundedSelectionButton(
                    title: "Pengumuman",
                    desc: "24 Oct 20",
                    icon: Icons.file_copy,
                    onTap: () {},
                  ),
                  RoundedSelectionButton(
                    title: "Pengumuman",
                    desc: "24 Oct 20",
                    icon: Icons.file_copy,
                    onTap: () {},
                  ),
                  RoundedSelectionButton(
                    title: "Pengumuman",
                    desc: "24 Oct 20",
                    icon: Icons.file_copy,
                    onTap: () {},
                  ),
                  RoundedSelectionButton(
                    title: "Pengumuman",
                    desc: "24 Oct 20",
                    icon: Icons.file_copy,
                    onTap: () {},
                  ),
                  RoundedSelectionButton(
                    title: "Pengumuman",
                    desc: "24 Oct 20",
                    icon: Icons.file_copy,
                    onTap: () {},
                  ),
                ]),
              ),
            ),
          ),
        ]));
  }
}
