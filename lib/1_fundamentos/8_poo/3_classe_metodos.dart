//tema : CARRO
class Carro {
  //atributos
  String? modelo;
  String? marca;
  int? ano;
  String? cor;
  bool? ligado;
  int velocidadeAtual = 0;

  //Construtor padrão (OCULTO)

  //Construtor personalizado
  Carro(this.marca, this.modelo, this.ano, this.cor);

  //metodos
  void ligar(){
    ligado = true;
    print('$modelo agora está ligado!');
  }

  void desligar() {
    ligado = false;
    print('$modelo agora está desligado!');
  }

  void acelerar( int quantidade ) {
    if(ligado!) {
      velocidadeAtual += quantidade;
      print('$modelo acelerou para $velocidadeAtual km/h');
    }else{
      print('Não pode acelerar enquanto o carro está desligado!');
    }
  }

  void frear(int quantidade) {
    if(ligado!) {
      velocidadeAtual = (velocidadeAtual - quantidade >= 0 ) ? velocidadeAtual - quantidade : 0;
      print('$modelo desacelerou para $velocidadeAtual km/h');
    }else{
      print('Não pode frear enquanto o carro está desligado!');
    }
  }

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
  //
  // print('Está ligado ? ${meuCarro.ligado! ? 'Sim' : 'Não'} ');
  // print('Velocidade Atual: ${meuCarro.velocidadeAtual} km/h');

  //metodos da classe
  meuCarro.ligar();
  meuCarro.acelerar(20);
  meuCarro.frear(10);
  meuCarro.desligar();

}

