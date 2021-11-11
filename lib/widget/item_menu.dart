import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemMenu extends StatelessWidget {
  final String titulo;
  final String caminho;

  ItemMenu({this.titulo, this.caminho});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        
        width: 500,
        child: Material(
          color: Theme.of(context).primaryColor,
          elevation: 2.0,
          borderRadius: BorderRadius.circular(6.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MaterialButton(
                  padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      "$caminho",
                    );
                  },
                  child: Text(
                    "$titulo",
                    style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
