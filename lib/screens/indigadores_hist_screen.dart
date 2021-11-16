import 'package:flutter/material.dart';
import 'package:thefive_planetaagua/widget/appbar.dart';
import 'package:thefive_planetaagua/widget/item_indicador.dart';
import 'package:thefive_planetaagua/widget/the_five.dart';


class IndicadorHist extends StatefulWidget {
  @override
  _IndicadorHistState createState() => _IndicadorHistState();
}

class _IndicadorHistState extends State<IndicadorHist> {
 
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
            padding: const EdgeInsets.only(top: 0, left: 40, right: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 155.0,
                  child: Center(
                    child: Container(
                      width: 150,
                      height: 130,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: new AssetImage("assets/images/logo.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 30),
                  child: Text("RELATÓRIO COM BASE HISTÓRICA", style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text("SELECIONE A PREFERÊNCIA:", style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade600,
                  ),
                  ),
                ),
                Row(
                  children: <Widget>[

                        ItemIndicador(caminho: "/indicadorHistPH",nome: "PH",),

                        ItemIndicador(caminho: "/indicadorHistCO2",nome: "CO2",),
                        
                      
                  ],
                ),
                Center(child: ItemIndicador(caminho: "/indicadorHistPHCO2",nome: "PH/CO2")),
                
                Padding(
                  padding: const EdgeInsets.only(top: 55),
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
