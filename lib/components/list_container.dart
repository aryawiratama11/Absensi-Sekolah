import 'package:absensi_sekolah/components/rounded_filter_button_v2.dart';
import 'package:flutter/material.dart';
import 'package:absensi_sekolah/utilities/constants.dart';

class ListContainer extends StatelessWidget {
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
                    RoundedFilterButtonV2(
                      fontSize: 16,
                      height: 0.05,
                      width: 0.24,
                      iconSize: 24,
                      onTap: () {},
                    )
                  ],
                ),
                Container(
                  width: size.width * 0.9,
                  height: size.height * 0.07,
                  margin: EdgeInsets.symmetric(
                    vertical: size.height * 0.02,
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
                                  width: size.width * 0.45,
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
                        fontSize: 16,
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
                Container(
                  width: size.width * 0.9,
                  height: size.height * 0.06,
                  margin: EdgeInsets.symmetric(
                    vertical: size.height * 0.02,
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
                              width: 40,
                              height: 40,
                              child: Icon(
                                Icons.file_present,
                                color: primaryColor,
                                size: 28,
                              ),
                            )),
                            Material(
                              child: Flexible(
                                child: Container(
                                  width: size.width * 0.45,
                                  color: greyColor,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Pengumuman rapot2",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color: blackColor,
                                            fontFamily: "Poppins-Medium",
                                            fontSize: 12,
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
                              width: 40,
                              height: 40,
                              child: Icon(
                                Icons.navigate_next,
                                color: whiteColor,
                                size: 28,
                              ),
                            ),
                            onTap: () {},
                          ),
                        )),
                      ]),
                ),
              ])));
        }
      }),
    );
  }
}
