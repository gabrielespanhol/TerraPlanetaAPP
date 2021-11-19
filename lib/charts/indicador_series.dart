import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/cupertino.dart';

class IndicadorSeries {
  String year;
  int dado;
  charts.Color barColor;

  IndicadorSeries({@required this.year, @required this.dado, this.barColor});

  IndicadorSeries.fromJson(Map<String, dynamic> json) {
    year = json['month'];
    dado = json['ph'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['month'] = this.year;
    data['ph'] = this.dado;
    return data;
  }
}
