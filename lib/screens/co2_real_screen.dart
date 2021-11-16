import 'package:flutter/material.dart';
import 'package:thefive_planetaagua/widget/appbar.dart';
import 'package:thefive_planetaagua/widget/the_five.dart';


class IndicadorRealCO2 extends StatefulWidget {
  @override
  _IndicadorRealCO2State createState() => _IndicadorRealCO2State();
}

class _IndicadorRealCO2State extends State<IndicadorRealCO2> {
 
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
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("RELATÓRIO EM TEMPO REAL",
                      style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade600,
                    ),
                   ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Center(
                    child: Text("CO2",
                        style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade600,
                      ),
                     ),
                  ),
                ),

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
