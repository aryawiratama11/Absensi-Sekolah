import 'package:absensi_sekolah/components/donut_pie_chart.dart';
import 'package:absensi_sekolah/components/rounded_button_v2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:absensi_sekolah/utilities/constants.dart';
import 'package:absensi_sekolah/components/list_container.dart';
import 'package:absensi_sekolah/components/rounded_profile_button_v2.dart';
import 'package:absensi_sekolah/components/rounded_selection_button_v2.dart';

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
          Column(
            children: [
              RoundedProfileButtonV2(
                onTap: () {},
                name: "Hafid",
                status: "Status",
                image: AssetImage("assets/images/ig.png"),
              ),
              Container(
                decoration: BoxDecoration(
                    color: whiteColor, borderRadius: BorderRadius.circular(30)),
                width: 350,
                height: 180,
                child: Row(
                  children: [
                    Container(
                        width: 180,
                        height: 180,
                        child: DonutPieChart.withSampleData()),
                    Container(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        // color: Colors.red,
                        width: 160,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Keterangan",
                                  style: TextStyle(
                                      fontFamily: "Poppins-Medium",
                                      fontSize: 14)),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(
                                    Icons.circle,
                                    color: Colors.blue,
                                  ),
                                  Text("Masuk",
                                      style: TextStyle(
                                          fontFamily: "Poppins-Medium",
                                          fontSize: 12)),
                                  Icon(
                                    Icons.circle,
                                    color: Colors.blue,
                                  ),
                                  Text("Masuk",
                                      style: TextStyle(
                                          fontFamily: "Poppins-Medium",
                                          fontSize: 12)),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(
                                    Icons.circle,
                                    color: Colors.blue,
                                  ),
                                  Text("Masuk",
                                      style: TextStyle(
                                          fontFamily: "Poppins-Medium",
                                          fontSize: 12)),
                                  Icon(
                                    Icons.circle,
                                    color: Colors.blue,
                                  ),
                                  Text("Masuk",
                                      style: TextStyle(
                                          fontFamily: "Poppins-Medium",
                                          fontSize: 12)),
                                ],
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: 40,
                                  width: 150.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF2196F3),
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        "Detail",
                                        style: TextStyle(
                                          color: whiteColor,
                                          fontFamily: "Poppins-SemiBold",
                                          fontSize: 16,
                                        ),
                                      ),
                                      Icon(
                                        Icons.navigate_next,
                                        color: whiteColor,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ])),
                  ],
                ),
              ),
            ],
          ),
          ListContainer(
            title: "Pengumuman",
            allSize: 50,
            // filterButton: RoundedFilterButtonV2(
            //   onTap: () {},
            //   allSize: 16,
            // ),
            selectionButton: RoundedSelectionButtonV2(
              allSize: 18,
              desc: "Desc",
              onTap: () {},
              title: "title",
              icon: Icons.insert_drive_file,
            ),
          )
        ]));
  }
}
