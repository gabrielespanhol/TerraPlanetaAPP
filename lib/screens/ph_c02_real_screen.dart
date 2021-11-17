import 'package:flutter/material.dart';
import 'package:thefive_planetaagua/widget/appbar.dart';
import 'package:thefive_planetaagua/widget/ph_co2.dart';
import 'package:thefive_planetaagua/widget/relatorio_tempo_real.dart';
import 'package:thefive_planetaagua/widget/the_five.dart';


class IndicadorRealPHCO2 extends StatefulWidget {
  @override
  _IndicadorRealPHCO2State createState() => _IndicadorRealPHCO2State();
}

class _IndicadorRealPHCO2State extends State<IndicadorRealPHCO2> {
 
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
                RelatorioPHCO2(),

                // indicador

                TheFive(),
              ],              
            ),
          ),
        ),
      ),
    );
  }
}
