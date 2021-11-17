import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class IndicadorSeries {
  final String year;
  final int ph;
  final charts.Color barColor;

  IndicadorSeries(this.year, this.ph, this.barColor);
}
