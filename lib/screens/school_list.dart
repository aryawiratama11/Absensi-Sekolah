import 'package:absensi_sekolah/components/rounded_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:absensi_sekolah/utilities/constants.dart';

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
            height: size.height,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.06,
                  ),
                  Text(
                    "Pilih sekolah kamu!",
                    style: TextStyle(
                        fontFamily: "Poppins-SemiBold",
                        color: blackColor,
                        fontSize: 24),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  RoundedInputField(
                    color: primaryColor,
                    hintText: "Masukkan nama sekolah kamu!",
                    hintColor: grey4Color,
                    icon: Icons.search,
                    conColor: whiteColor,
                    onChanged: (value) {},
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
