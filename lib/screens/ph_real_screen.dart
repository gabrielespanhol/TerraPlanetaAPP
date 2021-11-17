import 'package:flutter/material.dart';
import 'package:thefive_planetaagua/screens/teste.dart';
import 'package:thefive_planetaagua/widget/appbar.dart';
import 'package:thefive_planetaagua/widget/ph.dart';
import 'package:thefive_planetaagua/widget/relatorio_tempo_real.dart';
import 'package:thefive_planetaagua/widget/the_five.dart';
import 'package:charts_flutter/flutter.dart';



class IndicadorRealPH extends StatefulWidget {
  @override
  _IndicadorRealPHState createState() => _IndicadorRealPHState();
}

class _IndicadorRealPHState extends State<IndicadorRealPH> {

  final List<>
 
  @override
  Widget build(BuildContext context) {
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
                RelatorioPH(),// indicador

                GraficoTeste(seriesList),


                TheFive(),
              ],              
            ),
          ),
        ),
      ),
    );
  }
}
