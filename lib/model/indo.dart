class KasusIndo {
  final int confirmed;
  final int recovered;
  final int deaths;
  final int active;

  KasusIndo({this.confirmed, this.recovered, this.deaths, this.active});

  factory KasusIndo.createKasusIndo(Map<String, dynamic> object) {
    return KasusIndo(
      confirmed: object['confirmed'],
      recovered: object['recovered'],
      deaths: object['deaths'],
      active: object['active'],
    );
  }
}
