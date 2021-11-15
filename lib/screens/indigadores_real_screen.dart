import 'package:flutter/material.dart';
import 'package:thefive_planetaagua/widget/appbar.dart';
import 'package:thefive_planetaagua/widget/item_indicador.dart';
import 'package:thefive_planetaagua/widget/the_five.dart';


class IndicadorReal extends StatefulWidget {
  @override
  _IndicadorRealState createState() => _IndicadorRealState();
}

class _IndicadorRealState extends State<IndicadorReal> {
  final List indicadores = [
    {
      "id": "1",
      "titulo": "Mesa",
      "preco": 300,
      "foto": "movel1.jpeg",
      "descricao": "indicador"
    },
    {
      "id": "2",
      "titulo": "Cadeira",
      "preco": 120,
      "foto": "movel2.jpg",
      "descricao": "indicador"
    },
    {
      "id": "3",
      "titulo": "Manta",
      "preco": 200,
      "foto": "movel3.jpg",
      "descricao": "indicador"
    }
  ];

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
                  child: Text("RELATÓRIO EM TEMPO REAL", style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
                Text("SELECIONE A PREFERÊNCIA:", style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade600,
                ),
                ),
                Row(
                  children: <Widget>[

                        ItemIndicador(),

                        ItemIndicador(),
                        
                      
                  ],
                ),
                Center(child: ItemIndicador()),
                
                Padding(
                  padding: const EdgeInsets.only(top: 70),
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
