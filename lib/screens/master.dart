import 'package:absensi_sekolah/screens/FABBottomAppBar.dart';
import 'package:absensi_sekolah/screens/absent_details.dart';
import 'package:absensi_sekolah/screens/dashboardv2.dart';
import 'package:absensi_sekolah/utilities/constants.dart';
import 'package:flutter/material.dart';

class Master extends StatefulWidget {
  @override
  _MasterState createState() => _MasterState();
}

class _MasterState extends State<Master> {
  int _selectedIndex = 0;

  void _selectedTab(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _widgetOptions = <Widget>[
    Dashboardv2(),
    Text("daftar guru"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
        elevation: 2.0,
      ),
      bottomNavigationBar: FABBottomAppBar(
        onTabSelected: _selectedTab,
        items: [
          FABBottomAppBarItem(iconData: Icons.menu, text: 'This'),
          FABBottomAppBarItem(iconData: Icons.layers, text: 'Is'),
        ],
        notchedShape: CircularNotchedRectangle(),
        color: Colors.blueGrey,
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
