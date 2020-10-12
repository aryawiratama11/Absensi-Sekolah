import 'package:flutter/material.dart';
import 'package:absensi_sekolah/utilities/constants.dart';

class RoundedNavigatonButton extends StatelessWidget {
  final IconData icon;
  final Function onTap;

  const RoundedNavigatonButton({
    Key key,
    this.icon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(30),
          child: InkWell(
            onTap: onTap,
            splashColor: darkColor,
            borderRadius: BorderRadius.circular(30),
            child: Center(
                child: Icon(
              icon,
              size: 35,
              color: whiteColor,
            )),
          ),
        ),
      ),
    );
  }
}
