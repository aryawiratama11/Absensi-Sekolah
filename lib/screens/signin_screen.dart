import 'package:absensi_sekolah/components/or_divider.dart';
import 'package:absensi_sekolah/components/rounded_button.dart';
import 'package:absensi_sekolah/components/rounded_password_field.dart';
import 'package:absensi_sekolah/components/social_icon.dart';
import 'package:absensi_sekolah/screens/school_list.dart';
import 'package:absensi_sekolah/utilities/layout.dart';
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
    SizeConfig().init(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: SizeConfig.screenHeight,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: SizeConfig.blockHorizontal * 60,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.end,

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
            ),
            SvgPicture.asset(
              "assets/images/secure_data.svg",
              height: SizeConfig.blockVertical * 30,
            ),
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
    );
  }
}
