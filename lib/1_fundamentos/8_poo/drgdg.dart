class Carro {
  //atributos
  String? _modelo;
  String? _marca;
  int? _ano;
  String? _cor;
  bool _ligado = false;  // Inicializado com um valor default
  int _velocidadeAtual = 0;

  // Construtor personalizado
  Carro(this._marca, this._modelo, this._ano, this._cor);

  // Getters
  String? get modelo => _modelo;
  String? get marca => _marca;
  int? get ano => _ano;
  String? get cor => _cor;
  bool get ligado => _ligado;  // Removido o null check
  int get velocidadeAtual => _velocidadeAtual;

  // Setters
  set modelo(String? value) => _modelo = value;
  set marca(String? value) => _marca = value;
  set ano(int? value) => _ano = value;
  set cor(String? value) => _cor = value;

// Metodos

  void mostrarDetalhes(){
    print('Detalhes do Carro: ');
    print('Marca: ${_marca}');
    print('Modelo: ${_modelo}');
    print('Ano: ${_ano}');
    print('Cor: ${_cor}');
  }


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

  CarroEletrico(String marca, String modelo, int ano, String cor, this._nivelBateria) : super(marca, modelo, ano, cor);

  // Getters
  double get nivelBateria => _nivelBateria;

  // Setters
  set nivelBateria(double value) {
    if (value >= 0 && value <= 100) {
      _nivelBateria = value;
    } else {
      print("O nível da bateria deve estar entre 0 e 100");
    }
  }

// Métodos
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

  // Usando setters
  meuCarro.modelo = 'A8';  // Alterando o modelo usando setter

  // Usando getters
  print('Modelo atualizado: ${meuCarro.modelo}');  // Acessando o modelo usando getter

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

  // Usando setters
  meuCarroEletrico.nivelBateria = 85;  // Alterando o nível da bateria usando setter

  // Usando getters
  print('Nível de bateria atualizado: ${meuCarroEletrico.nivelBateria}');  // Acessando o nível da bateria usando getter

  //metodos da super classe
  meuCarroEletrico.ligar();
  meuCarroEletrico.acelerar(80);
  meuCarroEletrico.frear(30);

  // usando metodos da SUBclasse
  meuCarroEletrico.carregar();

}
