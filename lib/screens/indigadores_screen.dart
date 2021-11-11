import 'package:flutter/material.dart';
import 'package:thefive_planetaagua/widget/appbar.dart';
import 'package:thefive_planetaagua/widget/grid_Indicadores.dart';

class IndicadorReal extends StatefulWidget {
  @override
  _IndicadorRealState createState() => _IndicadorRealState();
}

class _IndicadorRealState extends State<IndicadorReal> {
  final List moveis = [
    {
      "titulo": "Mesa",
      "preco": 300,
      "foto": "movel1.jpeg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Cadeira",
      "preco": 120,
      "foto": "movel2.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Manta",
      "preco": 200,
      "foto": "movel3.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Sofá Cinza",
      "preco": 800,
      "foto": "movel4.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBarCustomizada(
          titulo: 'RELATÓRIO EM TEMPO REAL',
        ),
        body: Column(
          children: [
            Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(
                            left: 30, right: 20, top: 10, bottom: 10),
                        child: Divider())),
                
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(
                            left: 20, right: 30, top: 10, bottom: 10),
                        child: Divider())),
              ],
            ),
            Flexible(
                child: GridIndicadores(
                  atualiza: atualiza,
                  moveis: moveis,
            )),
          ],
        ));
  }

 void atualiza() {
    setState(() {
          
    });
  }
}

