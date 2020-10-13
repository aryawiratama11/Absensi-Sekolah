import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:absensi_sekolah/ui/base_widget.dart';
import 'package:absensi_sekolah/utilities/constants.dart';
import 'package:absensi_sekolah/screens/school_list.dart';
import 'package:absensi_sekolah/components/rounded_button.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BaseWidget(builder: (context, sizingInformation) {
      return Scaffold(
        body: Container(
          height: size.height,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.08,
                ),
                Center(
                  child: Text(
                    "Absensi Siswa",
                    style: TextStyle(
                      fontSize: 32,
                      color: primaryColor,
                      fontFamily: "Poppins-Bold",
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.08,
                ),
                Center(
                  child: SvgPicture.asset(
                    "assets/images/data.svg",
                    height: size.height * 0.35,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.08,
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
                  height: size.height * 0.01,
                ),
                Container(
                  width: size.width * 0.9,
                  child: Text(
                    "Lebih mudah dan efesien mengelola \nkehadiran kamu di sekolah.",
                    style: TextStyle(
                      fontSize: 14,
                      color: blackColor,
                      fontFamily: "Poppins-Regular",
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
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
                  height: size.height * 0.03,
                ),
                Container(
                  width: size.width * 0.9,
                  child: Column(
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
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
