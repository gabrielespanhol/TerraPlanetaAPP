import 'package:flutter/material.dart';
import 'package:thefive_planetaagua/charts/indicador_charts.dart';
import 'package:thefive_planetaagua/charts/indicador_series.dart';
import 'package:thefive_planetaagua/widget/appbar.dart';
import 'package:thefive_planetaagua/widget/ph.dart';
import 'package:thefive_planetaagua/widget/relatorio_tempo_real.dart';
import 'package:thefive_planetaagua/widget/the_five.dart';
import 'package:charts_flutter/flutter.dart' as charts;


class IndicadorRealPH extends StatefulWidget {
  @override
  _IndicadorRealPHState createState() => _IndicadorRealPHState();
}

class _IndicadorRealPHState extends State<IndicadorRealPH> {
  
  final List<IndicadorSeries> dados = [
    IndicadorSeries(year: '1955', dado: 3, barColor: charts.ColorUtil.fromDartColor(Colors.blue.shade300)),
    IndicadorSeries(year: '1965', dado: 2, barColor: charts.ColorUtil.fromDartColor(Colors.blue)),
    IndicadorSeries(year: '1975', dado: 4, barColor: charts.ColorUtil.fromDartColor(Colors.blue.shade300)),
    IndicadorSeries(year: '1985', dado: 6, barColor: charts.ColorUtil.fromDartColor(Colors.blue)),
    IndicadorSeries(year: '1995', dado: 6, barColor: charts.ColorUtil.fromDartColor(Colors.blue.shade300)),
    IndicadorSeries(year: '2005', dado: 7, barColor: charts.ColorUtil.fromDartColor(Colors.blue)),
    IndicadorSeries(year: '2010', dado: 5, barColor: charts.ColorUtil.fromDartColor(Colors.blue.shade300)),
    IndicadorSeries(year: '2015', dado: 8, barColor: charts.ColorUtil.fromDartColor(Colors.blue)),
    IndicadorSeries(year: '2020', dado: 9, barColor: charts.ColorUtil.fromDartColor(Colors.blue.shade300)),
  ];

/*

  TENTATIVA DE PUXAR DADOS DA API

  List<IndicadorSeries> getAll1() {
    List<IndicadorSeries> _list = [];
    Future<List<IndicadorSeries>> listFuture;
    listFuture = IndicadoresService().findAllAsync();
    listFuture.then((value) {
      if (value != null) value.forEach((item) => _list.add(item));
    });
    return _list == null ? [] : _list;
  }

  List<IndicadorSeries> dadosApi = [];

  var sair = false;
  var controle = 0;

  List<IndicadorSeries> _list = [];

  List<IndicadorSeries> getAll() {
   
    Future<List<IndicadorSeries>> listFuture;
    listFuture = IndicadoresService().findAllAsync();
    listFuture.then((value) {
      if (value != null) sair = false;
      print(sair);

      for (var item in value) {
        _list.add(item);
      }
      
      while (sair == false) {
        _list.add(value[controle]);
        if (value[controle] == null) {
          sair = true;
          controle++;
        }
      }
      //value.forEach((item) => _list.add(item));
      //if (value != null) _list = value;
    });
    print(_list);
    print('-------');
    print(dados);
    return _list == null ? [] : _list;
  }

  

  @override
  Widget buildNew(BuildContext context) {
    print(dados);
   

    return IndicadorCharts(dados: dados);
  }
  */

  @override
  Widget build(BuildContext context) {
   // dadosApi = getAll();

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBarCustomizada(
        titulo: '',
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(top: 0, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    Container(
                      width: 130,
                      height: 120,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: new AssetImage("assets/images/logo.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    RelatorioTempoReal(),
                  ],
                ),
                RelatorioPH(), // indicador

                Center(
                  child: IndicadorCharts(dados: dados),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: TheFive(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
