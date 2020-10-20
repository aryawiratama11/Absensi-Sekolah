import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:absensi_sekolah/utilities/constants.dart';
import 'package:absensi_sekolah/screens/school_list.dart';
import 'package:absensi_sekolah/components/rounded_button_v2.dart';

class IntroV2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Absensi Siswa",
            style: TextStyle(
              fontSize: 32,
              color: primaryColor,
              fontFamily: "Poppins-Bold",
            ),
          ),
        ),
        backgroundColor: whiteColor,
        elevation: 0,
      ),
      body: LayoutBuilder(
        builder: (context, contraints) {
          if (contraints.maxHeight > 600) {
            return Container(
              height: size.height,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/images/data.svg",
                    width: size.width * 0.8,
                  ),
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                  Text(
                    "Ayo kelola kehadiran kamu!",
                    style: TextStyle(
                      fontSize: 22,
                      color: blackColor,
                      fontFamily: "Poppins-SemiBold",
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.005,
                  ),
                  Text(
                    "Lebih mudah dan efesien mengelola \nkehadiran kamu di sekolah.",
                    style: TextStyle(
                      fontSize: 14,
                      color: blackColor,
                      fontFamily: "Poppins-Regular",
                    ),
                    textAlign: TextAlign.center,
                  ),
                  RoundedButtonV2(
                    onPress: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return SchoolList();
                      }));
                    },
                    text: "Lanjut",
                  ),
                  Column(
                    children: [
                      Text(
                        "Dengan menggunakan aplikasi ini, kamu",
                        style: TextStyle(
                          fontSize: 12,
                          color: blackColor,
                          fontFamily: "Poppins-Regular",
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "menyetujui ",
                              style: TextStyle(
                                fontSize: 12,
                                color: blackColor,
                                fontFamily: "Poppins-Regular",
                              ),
                            ),
                            Text(
                              "Ketentuan Layanan ",
                              style: TextStyle(
                                fontSize: 12,
                                color: darkColor,
                                fontFamily: "Poppins-Regular",
                              ),
                            ),
                            Text(
                              "dan ",
                              style: TextStyle(
                                fontSize: 12,
                                color: blackColor,
                                fontFamily: "Poppins-Regular",
                              ),
                            ),
                            Text(
                              "Ketentuan Privasi.",
                              style: TextStyle(
                                fontSize: 12,
                                color: darkColor,
                                fontFamily: "Poppins-Regular",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          } else {
            return Container(
              height: size.height,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  SvgPicture.asset(
                    "assets/images/data.svg",
                    width: size.width * 0.6,
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Text(
                    "Ayo kelola kehadiran kamu!",
                    style: TextStyle(
                      fontSize: 20,
                      color: blackColor,
                      fontFamily: "Poppins-SemiBold",
                    ),
                  ),
                  Text(
                    "Lebih mudah dan efesien mengelola \nkehadiran kamu di sekolah.",
                    style: TextStyle(
                      fontSize: 14,
                      color: blackColor,
                      fontFamily: "Poppins-Regular",
                    ),
                    textAlign: TextAlign.center,
                  ),
                  RoundedButtonV2(
                    onPress: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return SchoolList();
                      }));
                    },
                    text: "Lanjut",
                  ),
                  Column(
                    children: [
                      Text(
                        "Dengan menggunakan aplikasi ini, kamu",
                        style: TextStyle(
                          fontSize: 10,
                          color: blackColor,
                          fontFamily: "Poppins-Regular",
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "menyetujui ",
                              style: TextStyle(
                                fontSize: 10,
                                color: blackColor,
                                fontFamily: "Poppins-Regular",
                              ),
                            ),
                            Text(
                              "Ketentuan Layanan ",
                              style: TextStyle(
                                fontSize: 10,
                                color: darkColor,
                                fontFamily: "Poppins-Regular",
                              ),
                            ),
                            Text(
                              "dan ",
                              style: TextStyle(
                                fontSize: 10,
                                color: blackColor,
                                fontFamily: "Poppins-Regular",
                              ),
                            ),
                            Text(
                              "Ketentuan Privasi.",
                              style: TextStyle(
                                fontSize: 12,
                                color: darkColor,
                                fontFamily: "Poppins-Regular",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
