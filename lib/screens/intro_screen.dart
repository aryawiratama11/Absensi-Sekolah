import 'dart:ui';

import 'package:absensi_sekolah/components/back.dart';
import 'package:absensi_sekolah/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Back(),
        )
      ],
    ));
  }
}
