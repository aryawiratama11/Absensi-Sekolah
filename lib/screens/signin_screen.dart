import 'package:absensi_sekolah/components/or_divider.dart';
import 'package:absensi_sekolah/components/rounded_button.dart';
import 'package:absensi_sekolah/components/rounded_password_field.dart';
import 'package:absensi_sekolah/components/social_icon.dart';
import 'package:absensi_sekolah/screens/school_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:absensi_sekolah/utilities/constants.dart';
import 'package:absensi_sekolah/components/rounded_input_field.dart';
import 'package:absensi_sekolah/components/rounded_navigation_button.dart';

class SigninScreen extends StatefulWidget {
  @override
  _SigninScreenState createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: size.height * 0.06),
              Container(
                width: size.width * 0.9,
                child: Row(
                  children: [
                    RoundedNavigatonButton(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return SchoolList();
                        }));
                      },
                      icon: Icons.navigate_before,
                    ),
                    SizedBox(
                      width: size.width * 0.12,
                    ),
                    Text(
                      "Masuk akun",
                      style: TextStyle(
                        fontSize: 24,
                        color: blackColor,
                        fontFamily: "Poppins-SemiBold",
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.05),
              SvgPicture.asset(
                "assets/images/secure_data.svg",
                height: size.height * 0.35,
              ),
              SizedBox(height: size.height * 0.05),
              RoundedInputField(
                color: primaryColor,
                hintColor: lightColor,
                onChanged: (value) {},
                conColor: superLightColor,
                hintText: "Masukkan email kamu!",
                icon: Icons.supervised_user_circle,
              ),
              RoundedPasswordField(
                conColor: superLightColor,
                onChanged: (value) {},
              ),
              SizedBox(height: size.height * 0.01),
              RoundedButton(
                press: () {},
                text: "Masuk",
              ),
              OrDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocialIcon(
                    icon: "assets/icons/google.svg",
                    press: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
