import 'package:flutter/material.dart';
import 'package:absensi_sekolah/utilities/constants.dart';

class RoundedProfileButtonV2 extends StatelessWidget {
  final String name;
  final Object image;
  final String status;
  final Function onTap;

  RoundedProfileButtonV2(
      {Key key, this.image, this.name, this.status, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: size.width * 0.9,
        height: size.height * 0.07,
        margin: EdgeInsets.only(
          bottom: size.height * 0.04,
          top: size.height * 0.06,
          left: size.width * 0.02,
          right: size.width * 0.02,
        ),
        padding: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
            color: whiteColor, borderRadius: BorderRadius.circular(30)),
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          CircleAvatar(backgroundImage: image),
          SizedBox(width: size.width * 0.02),
          GestureDetector(
            onTap: onTap,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(name,
                    style: TextStyle(
                      color: blackColor,
                      fontFamily: "Poppins-Medium",
                      fontSize: 18,
                    )),
                Text(status,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: grey2Color,
                      fontFamily: "Poppins-Regular",
                      fontSize: 12,
                    )),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
