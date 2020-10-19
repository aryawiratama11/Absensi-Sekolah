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
          SelectionContainer()
        ]));
  }
}

class SelectionContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Align(
      alignment: Alignment.bottomCenter,
      child: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxHeight > 600) {
          return Container(
              height: size.height * 0.5,
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
                    Material(
                      color: superLightColor,
                      borderRadius: BorderRadius.circular(30),
                      child: InkWell(
                        onTap: () {},
                        splashColor: primaryColor,
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          width: size.width * 0.25,
                          height: size.height * 0.05,
                          padding: EdgeInsets.symmetric(horizontal: 10),
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
                    ),
                  ],
                ),
                Container(
                  width: size.width * 0.9,
                  height: size.height * 0.07,
                  margin: EdgeInsets.symmetric(
                    vertical: size.height * 0.02,
                    horizontal: size.width * 0.01,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                      color: greyColor,
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ClipOval(
                                child: SizedBox(
                              width: 50,
                              height: 50,
                              child: Icon(
                                Icons.file_present,
                                color: primaryColor,
                                size: 32,
                              ),
                            )),
                            Material(
                              child: Flexible(
                                child: Container(
                                  width: size.width * 0.55,
                                  color: greyColor,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Pengumuman rapot",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color: blackColor,
                                            fontFamily: "Poppins-Medium",
                                            fontSize: 16,
                                          )),
                                      Text("19 Okt 2020",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color: grey2Color,
                                            fontFamily: "Poppins-Regular",
                                            fontSize: 10,
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        ClipOval(
                            child: Material(
                          color: primaryColor, // button color
                          child: InkWell(
                            splashColor: darkColor, // inkwell color
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: Icon(
                                Icons.navigate_next,
                                color: whiteColor,
                                size: 32,
                              ),
                            ),
                            onTap: () {},
                          ),
                        )),
                      ]),
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
                        width: 85,
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
