import 'package:flutter/cupertino.dart';

class IndicadorSeries {
  String month;
  int ph;


  IndicadorSeries({@required this.month, @required this.ph});

  IndicadorSeries.fromJson(Map<String, dynamic> json) {
    month = json['month'];
    ph = json['ph'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['month'] = this.month;
    data['ph'] = this.ph;
    return data;
  }
}