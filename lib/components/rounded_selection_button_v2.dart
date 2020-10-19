import 'package:flutter/material.dart';
import 'package:absensi_sekolah/utilities/constants.dart';

class RoundedSelectionButtonV2 extends StatelessWidget {
  final String desc;
  final String title;
  final Function onTap;
  final double iconSize;
  final double fontSize;
  final double iconButtonSize;

  RoundedSelectionButtonV2(
      {Key key,
      this.desc,
      this.title,
      this.onTap,
      this.iconSize,
      this.fontSize,
      this.iconButtonSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final double newFontSize = fontSize / 1.5;
    final double newHeightContainer = iconSize * 2 + 10;

    return Container(
      height: size.height * 0 + newHeightContainer,
      margin: EdgeInsets.symmetric(
        vertical: size.height * 0.02,
      ),
      padding: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          color: greyColor, borderRadius: BorderRadius.circular(30)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipOval(
                child: SizedBox(
              width: iconButtonSize,
              height: iconButtonSize,
              child: Icon(
                Icons.file_present,
                color: primaryColor,
                size: iconSize,
              ),
            )),
            Material(
              child: Flexible(
                child: Container(
                  width: size.width * 0.40,
                  color: greyColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(title,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: blackColor,
                            fontFamily: "Poppins-Medium",
                            fontSize: fontSize,
                          )),
                      Text(desc,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: grey2Color,
                            fontFamily: "Poppins-Regular",
                            fontSize: newFontSize,
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        ClipOval(
            child: Material(
          color: primaryColor, // button color
          child: InkWell(
            splashColor: darkColor, // inkwell color
            child: SizedBox(
              width: iconButtonSize,
              height: iconButtonSize,
              child: Icon(
                Icons.navigate_next,
                color: whiteColor,
                size: iconSize,
              ),
            ),
            onTap: onTap,
          ),
        )),
      ]),
    );
  }
}
