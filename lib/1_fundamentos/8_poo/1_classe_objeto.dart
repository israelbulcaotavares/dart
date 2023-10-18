//tema : CARRO
void main() {

  Carro meuCarro = Carro();
  meuCarro.marca = 'AUDI';
  meuCarro.modelo = 'A7';
  meuCarro.ano = 2023;
  meuCarro.cor = 'preto';

  //exibir as informações
  print('Detalhes do Carro: ');
  print('Marca: ${meuCarro.marca}');
  print('Modelo: ${meuCarro.modelo}');
  print('Ano: ${meuCarro.ano}');
  print('Cor: ${meuCarro.cor}');


}

class Carro {
  //atributos
  String? modelo;
  String? marca;
  int? ano;
  String? cor;
  bool ligado = false;
  int velocidadeAtual = 0;
}