//tema : CARRO
class Carro {
  //atributos
  String? _modelo;
  String? _marca;
  int? _ano;
  String? _cor;
  bool? _ligado;
  int _velocidadeAtual = 0;

  //Construtor padrão (OCULTO)

  //Construtor personalizado
  Carro(this._marca, this._modelo, this._ano, this._cor);

  void mostrarDetalhes(){
    print('Detalhes do Carro: ');
    print('Marca: ${_marca}');
    print('Modelo: ${_modelo}');
    print('Ano: ${_ano}');
    print('Cor: ${_cor}');
  }

  //metodos
  void ligar(){
    _ligado = true;
    print('$_modelo agora está ligado!');

  }

  void desligar() {
    _ligado = false;
    print('$_modelo agora está desligado!');
  }

  void acelerar( int quantidade ) {
    if(_ligado!) {
      _velocidadeAtual += quantidade;
      print('$_modelo acelerou para $_velocidadeAtual km/h');
    }else{
      print('Não pode acelerar enquanto o carro está desligado!');
    }
  }

  void frear(int quantidade) {
    if(_ligado!) {
      _velocidadeAtual = (_velocidadeAtual - quantidade >= 0 ) ? _velocidadeAtual - quantidade : 0;
      print('$_modelo desacelerou para $_velocidadeAtual km/h');
    }else{
      print('Não pode frear enquanto o carro está desligado!');
    }
  }

}

class CarroEletrico extends Carro {
  double _nivelBateria;

  CarroEletrico(String marca, String modelo, int ano, String cor,  this. _nivelBateria) : super(marca, modelo, ano, cor);

//ALT + INSERT
  void carregar(){
    if(_ligado!){
      _nivelBateria = 100.0 ;
      print('$_modelo foi carregado e agora tem $_nivelBateria% de bateria ');
    }else{
      print('Não pode carregar enquanto o carro está ligado!');
    }
  }

  @override
  void mostrarDetalhes() {
    // TODO: implement mostrarDetalhes

    super.mostrarDetalhes();
    print('Nivel de bateria: $_nivelBateria');
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

