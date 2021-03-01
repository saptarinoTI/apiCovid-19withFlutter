import 'package:apiCovid19/colors/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TentangPage extends StatefulWidget {
  @override
  _TentangPageState createState() => _TentangPageState();
}

class _TentangPageState extends State<TentangPage> {
  final customColor = new CustomColor();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: customColor.colors['bgColor'],
      backgroundColor: Colors.grey.shade200,
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 20, bottom: 20),
                child: Center(
                  child: Text(
                    'TENTANG',
                    style: GoogleFonts.signikaNegative(
                      letterSpacing: 1,
                      color: customColor.colors['primary'],
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 0),
                      blurRadius: 8,
                      color: Colors.black54,
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(90),
                  child: Container(
                    child: Image.asset(
                      'images/img-tentang.png',
                      height: 180,
                      width: 180,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Text(
                    'SAPTARINO',
                    style: GoogleFonts.signikaNegative(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.2,
                      color: customColor.colors['primary'],
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Text(
                    'Desainer dan Programmer',
                    style: GoogleFonts.signikaNegative(
                      fontSize: 16,
                      letterSpacing: .5,
                      color: customColor.colors['darkText'],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(5, 5, 5, 20),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      child: Image(
                        image: AssetImage('images/icons/fb.png'),
                        color: customColor.colors['darkText'],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Image(
                        image: AssetImage('images/icons/ig.png'),
                        color: customColor.colors['darkText'],
                      ),
                    ),
                  ],
                ),
              ),
              _buildContainerTentang('Sumber API', '''1. Covid-19'''),
              _buildContainerTentang('Ikon', '''1. AloDokter'''),
              _buildContainerTentang('Artikel', '''1. HaloDokter'''),
              //
            ],
          ),
        ],
      ),
    );
  }

  Container _buildContainerTentang(String label, String isi) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 0),
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: GoogleFonts.signikaNegative(
              fontSize: 18,
              letterSpacing: .8,
              fontWeight: FontWeight.w700,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15, 5, 0, 5),
            child: Text(
              isi,
              style: GoogleFonts.signikaNegative(
                letterSpacing: .8,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
