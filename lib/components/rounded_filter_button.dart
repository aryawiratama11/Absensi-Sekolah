import 'package:absensi_sekolah/utilities/constants.dart';
import 'package:flutter/material.dart';

class RoundedFilterButton extends StatelessWidget {
  final Function press;

  const RoundedFilterButton({
    Key key,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        width: size.width * 0.25,
        height: size.height * 0.05,
        margin: EdgeInsets.symmetric(vertical: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: FlatButton(
              onPressed: press,
              color: superLightColor,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.filter_list,
                    color: primaryColor,
                  ),
                  Text(
                    "Filter",
                    style: TextStyle(
                      fontSize: 16,
                      color: blackColor,
                      fontFamily: "Poppins-Medium",
                    ),
                  ),
                ],
              )),
        ));
  }
}
