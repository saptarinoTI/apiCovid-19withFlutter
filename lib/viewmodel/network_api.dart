import 'dart:convert';
import 'package:apiCovid19/model/indo.dart';
import 'package:http/http.dart' as http;

class GetAPI {
  Future<List<KasusIndo>> fetchKasusIndo() async {
    final response = await http
        .get('https://covid19.mathdro.id/api/countries/indonesia/confirmed');

    var kasusIndo = List<KasusIndo>();

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      for (Map i in jsonData) {
        kasusIndo.add(KasusIndo.createKasusIndo(i));
      }
    }
    return kasusIndo;
  }
}
