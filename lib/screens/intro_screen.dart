import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:absensi_sekolah/utilities/constants.dart';
import 'package:absensi_sekolah/screens/school_list.dart';
import 'package:absensi_sekolah/components/rounded_button.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                    fontFamily: "Poppins-Bold",
                    color: primaryColor,
                    fontSize: 32,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.08,
              ),
              Center(
                child: SvgPicture.asset(
                  "assets/images/3.svg",
                  height: size.height * 0.35,
                ),
              ),
              SizedBox(
                height: size.height * 0.08,
              ),
              Container(
                width: size.width * 0.9,
                child: Text(
                  "Ayo kelola kehadiran kamu!",
                  style: TextStyle(
                    fontFamily: "Poppins-SemiBold",
                    color: blackColor,
                    fontSize: 22,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Container(
                width: size.width * 0.9,
                child: Text(
                  "Lebih mudah dan efesien mengelola kehadiran kamu di sekolah.",
                  style: TextStyle(
                    fontFamily: "Poppins-Regular",
                    color: blackColor,
                    fontSize: 14,
                  ),
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
                    Container(
                      width: size.width * 0.9,
                      child: Text(
                        "Dengan menggunakan aplikasi ini, kamu",
                        style: TextStyle(
                          fontFamily: "Poppins-Regular",
                          color: blackColor,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "menyetujui  ",
                          style: TextStyle(
                            fontFamily: "Poppins-Regular",
                            color: blackColor,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          "Ketentuan Layanan ",
                          style: TextStyle(
                            fontFamily: "Poppins-Regular",
                            color: darkColor,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          "dan ",
                          style: TextStyle(
                            fontFamily: "Poppins-Regular",
                            color: blackColor,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          "Ketentuan Privasi.",
                          style: TextStyle(
                            fontFamily: "Poppins-Regular",
                            color: darkColor,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
