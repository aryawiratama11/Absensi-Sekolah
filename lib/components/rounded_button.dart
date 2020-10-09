import 'package:absensi_sekolah/utilities/constants.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;

  const RoundedButton({
    Key key,
    this.press,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: FlatButton(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            onPressed: press,
            color: primaryColor,
            child: Text(
              text,
              style: TextStyle(
                color: whiteColor,
                fontFamily: "Poppins-SemiBold",
                fontSize: 24,
              ),
            )),
      ),
    );
  }
}
