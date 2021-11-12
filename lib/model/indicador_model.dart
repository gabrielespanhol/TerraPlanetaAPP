import 'dart:convert';

class IndicadorModel {
  String id;
  String titulo;
  String foto;
  String descricao;
  int preco;

  IndicadorModel({this.id,this.titulo, this.foto, this.descricao, this.preco});


  IndicadorModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    titulo = json['titulo'];
    foto = json['foto'];
    descricao = json['descricao'];
    preco = json['preco'];
  }


  IndicadorModel IndicadorModelFromMap(String str) => IndicadorModel.fromMap(json.decode(str));

  String IndicadorModelToMap(IndicadorModel data) => json.encode(data.toMap());

  factory IndicadorModel.fromMap(Map<String, dynamic> json) => IndicadorModel(
          id: json['id'],
          titulo: json['titulo'],
          foto : json['foto'],
          descricao : json['descricao'],
          preco: json['preco']
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "titulo": titulo,
        "foto": foto,
        "descricao": descricao,
        "preco": preco,
      };


}
