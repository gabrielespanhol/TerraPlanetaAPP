import 'package:flutter/material.dart';
import 'package:thefive_planetaagua/charts/indicador_charts.dart';
import 'package:thefive_planetaagua/charts/indicador_series.dart';
import 'package:thefive_planetaagua/services/indicador_service.dart';
import 'package:thefive_planetaagua/widget/appbar.dart';
import 'package:thefive_planetaagua/widget/ph.dart';
import 'package:thefive_planetaagua/widget/relatorio_tempo_real.dart';
import 'package:thefive_planetaagua/widget/the_five.dart';

class IndicadorRealPH extends StatefulWidget {
  @override
  _IndicadorRealPHState createState() => _IndicadorRealPHState();
}

class _IndicadorRealPHState extends State<IndicadorRealPH> {
  final List<IndicadorSeries> dados = [
    IndicadorSeries(month: '2008', ph: 1),
    IndicadorSeries(month: '2009', ph: 3),
    IndicadorSeries(month: '2010', ph: 4),
    IndicadorSeries(month: '2011', ph: 7),
    IndicadorSeries(month: '2012', ph: 5),
  ];

  List<IndicadorSeries> getAll() {
    List<IndicadorSeries> _list;
    Future<List<IndicadorSeries>> listFuture;
    listFuture = IndicadoresService().findAllAsync();
    listFuture.then((value) {
      if (value != null) value.forEach((item) => _list.add(item));
    });
    return _list == null ? [] : _list;
  }

  List<IndicadorSeries> dadosApi = [];

  @override
  Widget build(BuildContext context) {
    print(dados);
    dadosApi = getAll();

    return IndicadorCharts(dados: dados);
  }

  Widget buildOld(BuildContext context) {
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

                Container(),
                IndicadorCharts(dados: dados),

                TheFive(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
