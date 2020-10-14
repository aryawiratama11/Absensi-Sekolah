import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:absensi_sekolah/ui/base_widget.dart';
import 'package:absensi_sekolah/utilities/layout.dart';
import 'package:absensi_sekolah/utilities/constants.dart';
import 'package:absensi_sekolah/screens/school_list.dart';
import 'package:absensi_sekolah/components/rounded_button.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return BaseWidget(builder: (context, sizingInformation) {
      return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Absensi Siswa",
              style: TextStyle(
                fontSize: SizeConfig.blockVertical * 4,
                color: primaryColor,
                fontFamily: "Poppins-Bold",
              ),
            ),
          ),
          backgroundColor: whiteColor,
          elevation: 0,
        ),
        body: Container(
          height: SizeConfig.screenHeight,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.blockVertical * 3,
                ),
                Center(
                  child: SvgPicture.asset(
                    "assets/images/data.svg",
                    width: SizeConfig.screenWidth * 0.80,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockVertical * 3,
                ),
                Text(
                  "Ayo kelola kehadiran kamu!",
                  style: TextStyle(
                    fontSize: SizeConfig.blockVertical * 2.8,
                    color: blackColor,
                    fontFamily: "Poppins-SemiBold",
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockVertical * 1,
                ),
                Container(
                  width: SizeConfig.blockHorizontal * 100,
                  child: Text(
                    "Lebih mudah dan efesien mengelola \nkehadiran kamu di sekolah.",
                    style: TextStyle(
                      fontSize: SizeConfig.blockVertical * 2,
                      color: blackColor,
                      fontFamily: "Poppins-Regular",
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockVertical * 3,
                ),
                RoundedButton(
                  press: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return SchoolList();
                    }));
                  },
                  text: "Lanjut",
                ),
                SizedBox(
                  height: SizeConfig.blockVertical * 3,
                ),
                Container(
                  width: SizeConfig.blockHorizontal * 100,
                  child: Column(
                    children: [
                      Text(
                        "Dengan menggunakan aplikasi ini, kamu",
                        style: TextStyle(
                          fontSize: SizeConfig.blockVertical * 1.5,
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
                                fontSize: SizeConfig.blockVertical * 1.5,
                                color: blackColor,
                                fontFamily: "Poppins-Regular",
                              ),
                            ),
                            Text(
                              "Ketentuan Layanan ",
                              style: TextStyle(
                                fontSize: SizeConfig.blockVertical * 1.5,
                                color: darkColor,
                                fontFamily: "Poppins-Regular",
                              ),
                            ),
                            Text(
                              "dan ",
                              style: TextStyle(
                                fontSize: SizeConfig.blockVertical * 1.5,
                                color: blackColor,
                                fontFamily: "Poppins-Regular",
                              ),
                            ),
                            Text(
                              "Ketentuan Privasi.",
                              style: TextStyle(
                                fontSize: SizeConfig.blockVertical * 1.5,
                                color: darkColor,
                                fontFamily: "Poppins-Regular",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
