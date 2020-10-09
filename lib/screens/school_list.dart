import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SchoolList extends StatefulWidget {
  @override
  _SchoolListState createState() => _SchoolListState();
}

class _SchoolListState extends State<SchoolList> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(child: SvgPicture.asset("assets/images/school_list.svg"))
        ],
      ),
    );
  }
}
