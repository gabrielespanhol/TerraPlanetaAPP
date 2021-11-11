import 'package:flutter/cupertino.dart';

class ImagemElementoGridIndicador extends StatelessWidget {
  final String imagem;

  ImagemElementoGridIndicador({this.imagem});

  @override
  Widget build(BuildContext context) {
    
    return Positioned.fill(
      child: Image(
        fit: BoxFit.cover,
        image: AssetImage('assets/imagens/$imagem')),
    );
  }
}
