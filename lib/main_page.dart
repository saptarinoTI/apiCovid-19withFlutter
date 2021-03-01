import 'package:apiCovid19/colors/custom_color.dart';
import 'package:apiCovid19/ui/bantuan.dart';
import 'package:apiCovid19/ui/informasi.dart';
// import 'package:apiCovid19/ui/kasus.dart';
import 'package:apiCovid19/ui/kasus_new.dart';
import 'package:apiCovid19/ui/tentang.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final customColor = new CustomColor();

  final _tabs = [
    KasusPageNew(),
    InformasiPage(),
    BantuanPage(),
    TentangPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 20,
        selectedIconTheme: IconThemeData(color: customColor.colors['primary']),
        selectedItemColor: customColor.colors['primary'],
        unselectedIconTheme:
            IconThemeData(color: customColor.colors['disable'].withOpacity(.8)),
        unselectedItemColor: customColor.colors['disable'].withOpacity(.8),
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            title: Text(
              'Kasus',
              style: GoogleFonts.quicksand(
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
            icon: Container(
              child: Icon(Icons.dashboard),
              margin: EdgeInsets.only(top: 5),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            title: Text(
              'Informasi',
              style: GoogleFonts.quicksand(
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
            icon: Container(
              margin: EdgeInsets.only(top: 5),
              child: Icon(Icons.description),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            title: Text(
              'Bantuan',
              style: GoogleFonts.quicksand(
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
            icon: Container(
              margin: EdgeInsets.only(top: 5),
              child: Icon(Icons.phone),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            title: Text(
              'Tentang',
              style: GoogleFonts.quicksand(
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
            icon: Container(
              margin: EdgeInsets.only(top: 5),
              child: Icon(Icons.info),
            ),
          ),
        ],
      ),
    );
  }
}
