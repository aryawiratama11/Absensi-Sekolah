import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:absensi_sekolah/utilities/constants.dart';
import 'package:absensi_sekolah/components/rounded_input_field.dart';

class SchoolList extends StatefulWidget {
  @override
  _SchoolListState createState() => _SchoolListState();
}

class _SchoolListState extends State<SchoolList> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: lightColor,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: SvgPicture.asset("assets/images/sun.svg"),
          ),
          Positioned(
              left: 0,
              top: 80,
              child: SvgPicture.asset("assets/images/school_list.svg")),
          Container(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.06,
                ),
                Text(
                  "Pilih sekolah kamu!",
                  style: TextStyle(
                    fontSize: 24,
                    color: blackColor,
                    fontFamily: "Poppins-SemiBold",
                  ),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                RoundedInputField(
                  icon: Icons.search,
                  color: primaryColor,
                  conColor: whiteColor,
                  hintColor: grey4Color,
                  onChanged: (value) {},
                  hintText: "Masukkan nama sekolah kamu!",
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: size.height * 0.74,
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Column(children: [
                Row(
                  children: [
                    Text(
                      "Daftar Sekolah",
                      style: TextStyle(
                        fontSize: 20,
                        color: blackColor,
                        fontFamily: "Poppins-Medium",
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
