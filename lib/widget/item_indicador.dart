import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemIndicador extends StatelessWidget {
  final String caminho;
  final String nome;

  ItemIndicador({this.caminho,this.nome});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => {
            Navigator.pushNamed(
                context,
              "$caminho",
            ),
          },
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  
                  width: 140,
                  height: 100,
                  decoration: BoxDecoration(
                    
                    color: Colors.white,
                    border: Border.all(color: Theme.of(context).primaryColor,  width: 5,) 
                  ),
                  child: Center(
                    child: Text("$nome",
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,                
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
