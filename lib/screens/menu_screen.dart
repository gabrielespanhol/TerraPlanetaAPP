import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thefive_planetaagua/widget/item_menu.dart';
import 'package:thefive_planetaagua/widget/the_five.dart';

class MenuScreen extends StatefulWidget {

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(top: 60, left: 40, right: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 155.0,
                  child: Center(
                    child: Container(
                      width: 250,
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
                  padding: const EdgeInsets.only(top: 60, bottom: 30),
                  child: Text("RELATÓRIOS", style: TextStyle(
                    fontSize: 27,
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

                ItemMenu(titulo: 'RELATÓRIO EM TEMPO REAL', caminho: '/relatorioReal',),
                ItemMenu(titulo: 'RELATORIO COM BASE HISTÓRICA', caminho: '/relatorioHist',),
                ItemMenu(titulo: 'INTEGRANTES', caminho: '/integrantes',),
                
              SizedBox(
                  height: 155.0,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        width: 140,
                        decoration: new BoxDecoration(
                          image: new DecorationImage(
                            image: new AssetImage("assets/images/terra.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),   
                ),
                TheFive(),
              ],
            ),
          ),
        ),
      ),
    );   
  }
}