import 'package:apiCovid19/colors/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KasusPage extends StatefulWidget {
  @override
  _KasusPageState createState() => _KasusPageState();
}

class _KasusPageState extends State<KasusPage> {
  final customColor = new CustomColor();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: customColor.colors['lightText'],
      backgroundColor: Colors.grey.shade200,
      body: Stack(
        children: [
          ListView(
            children: [
              Column(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      children: [
                        Flexible(
                          flex: 1,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(20),
                            child: Text(
                              'Covid-19',
                              style: GoogleFonts.signikaNegative(
                                fontWeight: FontWeight.w600,
                                fontSize: 28,
                                letterSpacing: 1,
                                color: customColor.colors['primary'],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 44,
                          width: 44,
                          decoration: BoxDecoration(
                            color: Color(0xFFDDDDDD),
                            borderRadius: BorderRadius.circular(22),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(.1),
                                offset: Offset(0, 0),
                                blurRadius: 5,
                              ),
                            ],
                          ),
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.all(20),
                          child: Image(
                            image: AssetImage('images/icons/covid-19.png'),
                            color: customColor.colors['primary'],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            child: Text(
                              'KASUS COVID-19 DI KALTIM',
                              style: GoogleFonts.signikaNegative(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.4,
                                color: customColor.colors['primary'],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            child: Text(
                              'Update 24 Februari 2021',
                              style: GoogleFonts.roboto(
                                fontSize: 12,
                                letterSpacing: 1.4,
                                fontWeight: FontWeight.w600,
                                color: customColor.colors['darkText']
                                    .withOpacity(.5),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Row(
                            children: [
                              Flexible(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.only(right: 10),
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                  decoration: BoxDecoration(
                                    color: Colors.orange[700],
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  width: MediaQuery.of(context).size.width,
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          color:
                                              customColor.colors['lightText'],
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Icon(
                                          Icons.coronavirus,
                                          color: Colors.orange[700],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                        child: Text(
                                          '200.000',
                                          style: GoogleFonts.signikaNegative(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: .5,
                                            color:
                                                customColor.colors['lightText'],
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Total Kasus',
                                        style: GoogleFonts.roboto(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: .5,
                                          color:
                                              customColor.colors['lightText'],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.only(left: 5, right: 5),
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                  decoration: BoxDecoration(
                                    color: customColor.colors['primary'],
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  width: MediaQuery.of(context).size.width,
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          color:
                                              customColor.colors['lightText'],
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Icon(
                                          Icons.coronavirus,
                                          color: customColor.colors['primary'],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                        child: Text(
                                          '180.000',
                                          style: GoogleFonts.signikaNegative(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: .5,
                                            color:
                                                customColor.colors['lightText'],
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Sembuh',
                                        style: GoogleFonts.roboto(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: .5,
                                          color:
                                              customColor.colors['lightText'],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.only(left: 10),
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                  decoration: BoxDecoration(
                                    color: Colors.redAccent,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  width: MediaQuery.of(context).size.width,
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          color:
                                              customColor.colors['lightText'],
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Icon(
                                          Icons.coronavirus,
                                          color: Colors.redAccent,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                        child: Text(
                                          '20.000',
                                          style: GoogleFonts.signikaNegative(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: .5,
                                            color:
                                                customColor.colors['lightText'],
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Meninggal',
                                        style: GoogleFonts.roboto(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: .5,
                                          color:
                                              customColor.colors['lightText'],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  _buildContainerKasus(
                    'DATA TERKINI DI INDONESIA',
                    'Update 24 Februari 2021',
                    '3.000.000',
                    '800.000',
                    '2.000.000',
                    '200.000',
                  ),
                  _buildContainerKasus(
                    'DATA TERKINI DI DUNIA',
                    'Update 24 Februari 2021',
                    '3.000.000',
                    '800.000',
                    '2.000.000',
                    '200.000',
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container _buildContainerKasus(String label, String update, String totalKasus,
      String kasusAktif, String sembuh, String meninggal) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        // color: Color(0xFFDDDDDD),
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: Text(
                label,
                style: GoogleFonts.signikaNegative(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.4,
                    color: customColor.colors['primary']),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.fromLTRB(20, 1, 0, 0),
              child: Text(
                update,
                style: GoogleFonts.roboto(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.4,
                  color: customColor.colors['darkText'].withOpacity(.5),
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      totalKasus,
                      style: GoogleFonts.signikaNegative(
                        letterSpacing: .5,
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        color: customColor.colors['darkText'].withOpacity(.8),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      kasusAktif,
                      style: GoogleFonts.signikaNegative(
                        letterSpacing: .5,
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        color: customColor.colors['darkText'].withOpacity(.8),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      'Total Kasus',
                      style: GoogleFonts.signikaNegative(
                        letterSpacing: .5,
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: customColor.colors['darkText'].withOpacity(.4),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      'Kasus Aktif',
                      style: GoogleFonts.signikaNegative(
                        letterSpacing: .5,
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: customColor.colors['darkText'].withOpacity(.4),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      sembuh,
                      style: GoogleFonts.signikaNegative(
                        letterSpacing: .5,
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        color: customColor.colors['darkText'].withOpacity(.8),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      meninggal,
                      style: GoogleFonts.signikaNegative(
                        letterSpacing: .5,
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        color: customColor.colors['darkText'].withOpacity(.8),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      'Sembuh',
                      style: GoogleFonts.signikaNegative(
                        letterSpacing: .5,
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: customColor.colors['darkText'].withOpacity(.4),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      'Meninggal',
                      style: GoogleFonts.signikaNegative(
                        letterSpacing: .5,
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: customColor.colors['darkText'].withOpacity(.4),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
