void main(){

  //explicitas
  int idade = 30;
  double preco = 300.0;
  String mensagem = 'Olá, Dart!';
  bool estaVisivel = true;
  bool naoEstaVisivel = false;

  print('Minha idade é $idade');
  print('Meu preço é $preco');
  print(mensagem);
  print('Está visivel realmente ? $estaVisivel ');
  print('Não está visivel ? $naoEstaVisivel ');


  //inferencia
  var idade2 = 30;
  print('Minha idade é $idade2');
  var preco2 = 300.0;
  var mensagem2 = 'Olá, Dart!';
  var estaVisivel2 = true;
  var naoEstaVisivel2 = false;

  //dinamica
  dynamic variavelDinamica = 'Eu sou uma String!';
 // variavelDinamica = 100; //agora eu sou um inteiro

  print(variavelDinamica);

}