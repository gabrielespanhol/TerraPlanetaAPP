import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TituloElementoGridindicador extends StatelessWidget {
  final String titulo;

  TituloElementoGridindicador({this.titulo});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      child: Text(titulo, style: Theme.of(context).textTheme.headline2,));
  }
}
