import 'package:absensi_sekolah/screens/absent_details.dart';
import 'package:absensi_sekolah/screens/chart.dart';
import 'package:absensi_sekolah/screens/dashboardv2.dart';
import 'package:absensi_sekolah/screens/introv2.dart';
import 'package:absensi_sekolah/screens/master.dart';
import 'package:absensi_sekolah/screens/school_list_example.dart';
import 'package:absensi_sekolah/screens/school_listv2.dart';
import 'package:absensi_sekolah/screens/signin.dart';
import 'package:absensi_sekolah/screens/signinv2.dart';
import 'package:absensi_sekolah/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:absensi_sekolah/screens/intro.dart';

// void main() {
//   runApp(DevicePreview(
//     builder: (context) => MyApp(),
//   ));
// }

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // DevicePreview.of(context).locale;

    return MaterialApp(
      title: 'Absensi Siswa',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.white,
          textTheme:
              Theme.of(context).textTheme.apply(displayColor: Colors.blue)),
      home: Master(),
    );
  }
}
