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

  void mostrarDetalhes(){
    print('Detalhes do Carro: ');
    print('Marca: ${marca}');
    print('Modelo: ${modelo}');
    print('Ano: ${ano}');
    print('Cor: ${cor}');
  }

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

class CarroEletrico extends Carro {
  double nivelBateria;

  CarroEletrico(String marca, String modelo, int ano, String cor,  this. nivelBateria) : super(marca, modelo, ano, cor);

//ALT + INSERT
  void carregar(){
    if(ligado!){
     nivelBateria = 100.0 ;
      print('$modelo foi carregado e agora tem $nivelBateria% de bateria ');
    }else{
      print('Não pode carregar enquanto o carro está ligado!');
    }
  }

  @override
  void mostrarDetalhes() {
    // TODO: implement mostrarDetalhes

    super.mostrarDetalhes();
    print('Nivel de bateria: $nivelBateria');
  }



}

void main() {
  Carro meuCarro = Carro('AUDI','A7',2023,'preto' );

  //exibir as informações
  meuCarro.mostrarDetalhes();


  //metodos da classe
  meuCarro.ligar();
  meuCarro.acelerar(20);
  meuCarro.frear(10);
  meuCarro.desligar();


  ///CARRO ELETRICO
  CarroEletrico meuCarroEletrico = CarroEletrico('Tesla', 'Modelo 4', 2024, 'Branca', 75.0);
  print('');
  //exibir as informações do carro eletrico
  meuCarroEletrico.mostrarDetalhes();


  //metodos da super classe
  meuCarroEletrico.ligar();
  meuCarroEletrico.acelerar(80);
  meuCarroEletrico.frear(30);

  // usando metodos da SUBclasse
  meuCarroEletrico.carregar();

}

