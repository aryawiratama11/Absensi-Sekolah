import 'package:absensi_sekolah/screens/dashboardv2.dart';
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
      home: Dashboardv2(),
    );
  }
}
