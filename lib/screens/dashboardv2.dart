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
        backgroundColor: primaryColor,
        body: Stack(children: [
          Positioned(
            top: 0,
            left: 0,
            child: SvgPicture.asset("assets/images/sun.svg"),
          ),
          Positioned(
            top: 150,
            left: -2,
            child: SvgPicture.asset("assets/images/house.svg"),
          ),
          SelectionContainer()
        ]));
  }
}

class SelectionContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxHeight > 600) {
          return Container(
              height: 400,
              width: double.infinity,
              padding: EdgeInsets.all(20),
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
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 90,
                        height: 40,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            color: superLightColor,
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.filter_list, color: primaryColor),
                            Text(
                              "Filter",
                              style: TextStyle(
                                fontSize: 16,
                                color: blackColor,
                                fontFamily: "Poppins-Medium",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ])));
        } else {
          return Container(
              height: 300,
              width: double.infinity,
              padding: EdgeInsets.all(20),
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
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 80,
                        height: 35,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            color: superLightColor,
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.filter_list, color: primaryColor),
                            Text(
                              "Filter",
                              style: TextStyle(
                                fontSize: 14,
                                color: blackColor,
                                fontFamily: "Poppins-Medium",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ])));
        }
      }),
    );
  }
}
