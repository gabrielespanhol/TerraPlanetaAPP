class Indicador {
  String titulo;
  String foto;
  String descricao;
  int preco;

  Indicador({this.titulo, this.foto, this.descricao, this.preco});

  Indicador.fromJson(Map<String, dynamic> json) {
    titulo = json['titulo'];
    foto = json['foto'];
    descricao = json['descricao'];
    preco = json['preco'];
  }
}
