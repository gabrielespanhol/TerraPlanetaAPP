import 'package:flutter/material.dart';
import 'package:thefive_planetaagua/widget/appbar.dart';
import 'package:thefive_planetaagua/widget/ph_co2.dart';
import 'package:thefive_planetaagua/widget/relatorio_base_hist.dart';
import 'package:thefive_planetaagua/widget/the_five.dart';


class IndicadorHistPHCO2 extends StatefulWidget {
  @override
  _IndicadorHistPHCO2State createState() => _IndicadorHistPHCO2State();
}

class _IndicadorHistPHCO2State extends State<IndicadorHistPHCO2> {
 
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
                    RelatorioBaseHist(),
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
