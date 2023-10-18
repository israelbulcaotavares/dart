import 'package:fundamentos/1_fundamentos/8_poo/Ferrari.dart';

void main() {

  _acelerarCarro();
  Ferrari nomeDaFerrari = Ferrari();
  nomeDaFerrari.nome;
  print(nomeDaFerrari.nome);
}

void _acelerarCarro() {
  print('Carro acelerando!');
}