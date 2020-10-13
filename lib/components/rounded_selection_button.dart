import 'package:absensi_sekolah/components/rounded_navigation_button.dart';
import 'package:flutter/material.dart';
import 'package:absensi_sekolah/utilities/constants.dart';
import 'package:absensi_sekolah/components/button_container.dart';

class RoundedSelectionButton extends StatelessWidget {
  final String desc;
  final String title;
  final IconData icon;
  final Function onTap;

  const RoundedSelectionButton({
    Key key,
    this.desc,
    this.icon,
    this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ButtonContainer(
      child: Row(children: [
        Container(
          width: size.width * 0.15,
          child: Icon(
            Icons.school,
            size: size.width * 0.08,
            color: primaryColor,
          ),
        ),
        Container(
          width: size.width * 0.60,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: TextStyle(
                    fontSize: 16,
                    color: blackColor,
                    fontFamily: "Poppins-Medium",
                  )),
              Text(desc,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12,
                    color: grey2Color,
                    fontFamily: "Poppins-Regular",
                  )),
            ],
          ),
        ),
        RoundedNavigatonButton(
          onTap: onTap,
          icon: icon,
        )
      ]),
    );
  }
}