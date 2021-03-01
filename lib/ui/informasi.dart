import 'package:apiCovid19/colors/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InformasiPage extends StatefulWidget {
  @override
  _InformasiPageState createState() => _InformasiPageState();
}

class _InformasiPageState extends State<InformasiPage> {
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
                margin: EdgeInsets.only(top: 20, bottom: 10),
                child: Center(
                  child: Text(
                    'INFORMASI',
                    style: GoogleFonts.signikaNegative(
                      letterSpacing: 1,
                      color: customColor.colors['primary'],
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              _buildCardInfo(Colors.orange.shade200, Colors.orange.shade600,
                  Icons.coronavirus, Colors.white, 'Mengenal Virus Covid-19'),
              _buildCardInfo(Colors.red.shade200, Colors.red.shade600,
                  Icons.masks, Colors.white, 'Gejala Terinfeksi'),
              _buildCardInfo(
                  customColor.colors['primary'].withOpacity(.5),
                  customColor.colors['primary'],
                  Icons.healing,
                  Colors.white,
                  'Cara Mencengah'),
            ],
          ),
        ],
      ),
    );
  }

  Container _buildCardInfo(Color colorGra1, Color colorGra2, IconData icon,
      Color iconColor, String label) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      width: MediaQuery.of(context).size.width,
      child: RaisedButton(
        onPressed: () {},
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 0,
        child: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              margin: EdgeInsets.fromLTRB(0, 15, 10, 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [colorGra1, colorGra2],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Icon(
                icon,
                color: iconColor,
                size: 25,
              ),
            ),
            Flexible(
              flex: 4,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  label,
                  style: GoogleFonts.signikaNegative(
                    letterSpacing: .5,
                    color: customColor.colors['darkText'],
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(right: 20),
                width: MediaQuery.of(context).size.width,
                child: Text(
                  '>',
                  style: GoogleFonts.nanumGothic(
                    fontSize: 14,
                    color: customColor.colors['primary'],
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.end,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
