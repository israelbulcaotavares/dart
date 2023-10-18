import 'dart:io';

void main(){
  //int numero = 2;

  print('Digite um numero: ');

  String? entradaDoTeclado = stdin.readLineSync();
  int numero = int.parse(entradaDoTeclado!);

  if(numero > 5){
    print('$numero é maior que 5');
  }else if(numero == 5){
    print('$numero é igual a 5');
  }else{
    print('$numero é menor que 5');
  }
}