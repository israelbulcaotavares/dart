void main() {
  Function somar = (int a, int b) => a + b;
  Function subtrair = (int a, int b) => a - b;

  var resultado1 = calcular(5, 3, somar);
  var resultado2 = calcular(10, 5, subtrair);

  print('Resultado da soma: $resultado1 ');
  print('Resultado da subtração: $resultado2 ');
}

int calcular( int valorA, int valorB, Function operacao  ) {
   return operacao(valorA,valorB );
}
