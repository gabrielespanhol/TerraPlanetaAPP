import 'package:flutter/material.dart';
import 'package:thefive_planetaagua/widget/appbar.dart';



class Integrantes extends StatefulWidget {
  @override
  _IntegrantesState createState() => _IntegrantesState();
}

class _IntegrantesState extends State<Integrantes> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBarCustomizada(
        titulo: '',
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/integrantes.png"),
           fit: BoxFit.cover,
          ),
        ),
      )  
    );
  }
}
