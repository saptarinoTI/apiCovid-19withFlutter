import 'package:apiCovid19/model/indo.dart';
import 'package:apiCovid19/viewmodel/network_api.dart';
import 'package:flutter/material.dart';

class KasusPageNew extends StatefulWidget {
  @override
  _KasusPageNewState createState() => _KasusPageNewState();
}

class _KasusPageNewState extends State<KasusPageNew> {
  List<KasusIndo> _kasusIndo = List<KasusIndo>();

  @override
  void initState() {
    super.initState();
    GetAPI().fetchKasusIndo().then((value) {
      setState(() {
        _kasusIndo.addAll(value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _kasusIndo.length,
        itemBuilder: (context, index) {
          return Center(
            child: Text(_kasusIndo[index].active.toString()),
          );
        },
      ),
    );
  }
}
