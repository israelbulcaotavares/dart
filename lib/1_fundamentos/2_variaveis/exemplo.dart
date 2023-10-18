void main(){

  //explicitas
  int idade = 30;
  double preco = 300.0;
  String mensagem = 'Olá, Dart!';
  bool estaVisivel = true;
  bool naoEstaVisivel = false;

  //inferencia
  var idade2 = 30;
  var preco2 = 300.0;
  var mensagem2 = 'Olá, Dart!';
  var estaVisivel2 = true;
  var naoEstaVisivel2 = false;

  //dinamica
  dynamic variavelDinamica = 'Eu sou uma String!';
  variavelDinamica = 100; //agora eu sou um inteiro

}