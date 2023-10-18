//tema : CARRO
class Carro {
  //atributos
  String? modelo;
  String? marca;
  int? ano;
  String? cor;
  bool ligado = true;
  int velocidadeAtual = 120;

  //Construtor padrão (OCULTO)

  //Construtor personalizado
  Carro(this.marca, this.modelo, this.ano, this.cor);

}

void main() {

  Carro meuCarro = Carro('AUDI','A7',2023,'preto' );
  // meuCarro.marca = 'AUDI';
  // meuCarro.modelo = 'A7';
  // meuCarro.ano = 2023;
  // meuCarro.cor = 'preto';

  //exibir as informações
  print('Detalhes do Carro: ');
  print('Marca: ${meuCarro.marca}');
  print('Modelo: ${meuCarro.modelo}');
  print('Ano: ${meuCarro.ano}');
  print('Cor: ${meuCarro.cor}');

  print('Está ligado ? ${meuCarro.ligado ? 'Sim' : 'Não'} ');
  print('Velocidade Atual: ${meuCarro.velocidadeAtual} km/h');


}

